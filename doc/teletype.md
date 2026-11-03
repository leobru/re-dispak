# The DISPAK Teletype Subsystem: How 5-bit Teletypes Worked

*Reconstructed from the disassembled sources of OS DISPAK for the BESM-6.*

## Overview

The BESM-6 had no serial-port (UART) hardware. DISPAK served its 5-bit
teletypes with a **multichannel software UART**: up to 24–30 telegraph lines
were wired to plain parallel I/O registers (one bit per line), and a 250 Hz
interrupt sampled and drove every line simultaneously. The OS assembled and
disassembled the 50-baud asynchronous frames — **1 start bit, 5 data bits,
2 stop bits** — entirely in software, including the three-register
(РУС/ЛАТ/ЦИФ) shift logic of the МТК-2 telegraph alphabet.

## Where the code lives

| File | Module | Role |
|---|---|---|
| `mott.be` | МОТТ ("Модуль Обслуживания ТелеТайпов") | The whole bit- and character-level engine |
| `term.be` | ТЕРМ | Converts text into terminal codes on output; shared by БНБОТ and Э71ТК |
| `disp70.be` | ДИСП70 (resident kernel) | Interrupt dispatch; `ту10` (disp70.be:1168) is the teletype-tick handler |
| `e71tk.be` | Э71ТК | Extracode Э71 — the user-program API for terminal I/O |
| `bonbot.be` | БНБОТ | Operator/OS message output to terminals |
| `rukava.be` | (operator's guide) | Documents the ГРП interrupt register and the sysgen sections describing teletype attachment |

## The physical layer

A teletype line is a current-loop telegraph circuit:

- idle state = current flowing (**mark**);
- start bit = break in current (**space**);
- each data bit = 20 ms of mark (1) or space (0) at 50 baud.

The hardware interface on the BESM-6 side is trivial — two parallel
registers accessed with the УВВ instruction:

| Command | Direction | Meaning |
|---|---|---|
| `увв '4100'` | read | Instantaneous state of **all** telegraph lines, one bit per channel (`ОПРОС`, mott.be:1279) |
| `увв '140'` | write | Output word `вкан`, one bit per channel (`влинии` — "выдача битов в телеграфные линии", mott.be:1374) |
| `увв '4143'` / `'153'` | read | Read/clear an 8-bit syllable from the АС (аппаратура сопряжения) path (mott.be:146–147) |

### Polarity inversion

Internally DISPAK inverts the line polarity: **internal 1 = space (no
current), internal 0 = mark (current)**. Consequences:

- an idle line contributes zero bits, so the transmit word `вкан` is simply
  the OR of all currently-transmitting channels;
- the start bit is a 1 and the stop bits are 0s in the internal frame;
- the internal 5-bit code values are the bitwise complement of the values on
  the wire.

The `кодрег` table (mott.be:23–25) proves the inversion. It holds the
pre-framed register-shift characters:

```
кодрег  конд    в'0000000000000220'  ЦИФ 04    (frame 10010000)
        конд    в'0000000000000200'  ЛАТ 00    (frame 10000000)
        конд    в'0000000000000374'  РУС 37    (frame 11111100)
```

Complementing the 5 code bits gives the wire codes `11011`, `11111`,
`00000` — exactly ITA2 FIGS, ITA2 LTRS, and the ITA2 blank that the Soviet
МТК-2 standard repurposed as the third (Russian) register.

## Framing

The frame format is stated verbatim twice in the source:

```
ттайп8  счи  М14      "1" - СТАРТ. 5 КОДОВЫХ "00" - СТОП.   (term.be:306)
        и    П37
        сда  64-2
        или  E8
```

Each character is packed into a fixed 8-bit unit:

```
bit:      8    7   6   5   4   3    2   1
        ┌────┬───────────────────┬────────┐
        │ 1  │ d1  d2  d3  d4 d5 │  0   0 │
        └────┴───────────────────┴────────┘
         start   5 code bits       2 stop
                 (b1 first)         bits
```

On output, ТЕРМ packs 6 such units per 48-bit word into buffer "records";
МОТТ then shifts them onto the line bit by bit. On input, the sampler
reassembles exactly the same 8-bit pattern.

## Timing: one interrupt, five phases

ГРП (главный регистр прерываний — the main interrupt register) bit 40 is
documented in rukava.be:73 as:

```
* 40  * ЗАПРОС ГОТ. ТЕЛЕТАЙПА  * Т = 4 МСЕК
```

Every 4 ms the handler chain `ту10 → ottvt → пр1 … → вд → влинии` runs
(disp70.be:1168, mott.be:1267…1504):

- **Transmit** happens on every 5th tick. The tick counter `СЧПР1`
  increments in `ottvt` (mott.be:1267) and is reset by the transmit block
  `вд` (mott.be:1447), entered when the counter reaches 5:
  5 × 4 ms = **20 ms per bit = 50 baud**, the standard telegraph speed.
  Each transmitting channel's next bit is extracted from its record word
  (`НОМСИМ` counts 48 bits down per word, mott.be:1478) and ORed into
  `вкан` at the channel's bit position; one `увв '140'` then updates all
  lines at once.
- **Receive** samples all lines on *every* tick (5× oversampling). A line
  going active while idle is a start-bit edge; the channel is then
  registered in the phase scale `РАБШК(phase)` for the current tick phase
  (mott.be:1294). From then on it is sampled once per 5 ticks, offset
  ~3 phases (~12 ms) from the detected edge — i.e. roughly mid-bit of each
  20 ms cell. Each channel has a shift register `симво1(канал)` into which
  the sampled bit is shifted (mott.be:1307–1312). After 8 samples the
  accumulated byte is exactly the `1ddddd00` frame; it is stored to
  `ГТСЛ+8(канал)` and the channel is flagged in `естьс` (mott.be:1318–1322).

This is a classic software-UART design: oversample for edge detection,
then sample once per bit near the bit center, tracking an independent phase
for every channel.

The same 4 ms tick is also the kernel's time base: `врзад` (disp70.be:1195)
increments the OS lifetime counter (`Т`), the global `ВРЕМЯ`, and per-task
CPU time from within the teletype interrupt chain.

### Wake-up on start signal

To avoid running the 250 Hz machinery while all lines are idle, the
hardware provides a separate interrupt, ГРП bit 31 — `СТАРТОВЫЙ СИГНАЛ ТТ`
(rukava.be:85), raised by any line's start transition. Its vector
(disp70.be:1338) enters `дпа1`, the "БЛОК ВКЛ. ТЕЛЕТАЙПА" (teletype
turn-on block, disp70.be:892), which activates servicing.

## The МТК-2 code and its three registers

Five bits give only 32 combinations, so the code is stateful: **shift
characters select one of three registers** — Russian letters (РУС), Latin
letters (ЛАТ), digits/punctuation (ЦИФ). The shift codes in DISPAK's
internal (inverted) representation are ЛАТ = 00, ЦИФ = 04, РУС = 37₈.

### Decode table

The receive dispatcher `contrl` (mott.be:340–404) is a 32-way jump table,
one entry per 5-bit code, whose comments spell out the whole alphabet.
Column order in the comments is **ЦИФ, ЛАТ, РУС** (some entries carry
additional escape-register glyphs):

```
00 - ЛАТ                        20 - =  Y  Ж   * ≡
01 - (  K  К   [                21 - :  C  Ц
02 - 1  Q  Я   Ч                22 - 0  P  П
03 - 7  U  У   ×                23 - 8  I  И   ∧
04 - ЦИФ                        24 - Ш  G  Г   > ↑
05 - Ю  J  Й   ∨                25 - 4  R  Р
06 - 2  W  В   |                26 - )  L  Л   ] < ⩽
07 - -  A  А   подчерк          27 - ПЕРЕВОД СТРОКИ ( = )
10 - /  X  Ь   % ¬              30 - .  M  М
11 - Э  F  Ф                    31 - ,  N  Н   ; ≠
12 - 6  U  Ы                    32 - ЕSC  Н Х Щ
13 - '  S  С   ◊                33 - ПРОБЕЛ
14 - ?  B  Б   ⩾                34 - 9  O  О
15 - ✠  D  Д   ÷                35 - ВОЗВРАТ КАРЕТКИ ( < )
16 - +  Z  З   надчерк          36 - 5  T  Т
17 - 3  E  Е                    37 - РУС
```

(The table is transcribed from the source comments; a few glyphs in the
disassembly listing are approximate.)

Sanity check against the international ITA2 standard: internal 07,
complemented, is wire code `11000` = ITA2 'A' (FIGS '-'); internal 02 →
`11101` = ITA2 'Q' (FIGS '1'); internal 23 → `01100` = ITA2 'I' (FIGS '8').
МТК-2 is ITA2 with the Russian register grafted onto the unused all-zeros
combination — and the code matches it exactly.

Decoding is register-dependent: the current register is kept per line in
word 6 of the line's record; the `тт` handler (mott.be:419) combines the
5-bit code with the register to produce the internal 8-bit (УПП) character,
consulting the `КЗП2` scale for escape-combinations. Register-shift codes
themselves go to `escape` (mott.be:405), which updates word 6.

### Encode path

On output, `ттайп4` (term.be:260–310) does the register bookkeeping:

- each `ТАБКОД` entry (term.be:485) carries the 5-bit combination (mask
  `П37`) plus a field (mask `П140`) saying which register the character
  lives in;
- the shift combination from `кодрег` is inserted **only when the register
  actually changes** (`ттайп3`, term.be:278);
- characters that exist in all registers — space, `<` (CR), `=` (LF) —
  skip the logic entirely: "УСТ. РЕГИСТРА НЕ ТРЕБУЕТСЯ (SP'='<)"
  (term.be:262);
- an optimization "С ЛАТ НА РУС МОЖНО НЕ ПЕРЕКЛЮЧАТЬ" (term.be:275) avoids
  the switch for letters identical in the Latin and Russian alphabets;
- characters absent from the 32-code space are emitted as ESC-combinations
  (prefix codes Щ/Н/Х, `ттайп1`/`ттайп6`, term.be:290–301; receive side at
  `esca`, mott.be:443).

The finished frame is stored via `ттайп8` and `ЗС` (term.be:340) into the
record buffer, 6 frames per word.

## Echo and "ТАЙНА"

For lines wired full-duplex (separate send and receive loops) the teletype
printer does not see the keyboard locally, so the OS echoes received bits
back onto the line: the receive block builds `ВКАНАЛ` from the sampled
input bits (mott.be:1348–1353), and `влинии` ORs it into the output word.
The echo is gated by the mask `ТАЙНА`, defined as

```
ТАЙНА КОНД В’-1’    ТЕРМИНАЛЫ С РАЗОРВАННЫМ ДУПЛЕКСОМ    (mott.be:1678)
```

("terminals with split duplex", default: echo everywhere). The Э71
extracode can clear a channel's ТАЙНА bit (e71tk.be:316) — i.e. suppress
echo, e.g. for password entry; "тайна" means "secret".

## Break detection

If the assembled byte has no stop bit — the line stayed in space through
the stop-bit position — the condition is treated as a line break (обрыв):
`ttvt1` checks "ЕСТЬ СТОПОВАЯ ПОСЫЛКА" (mott.be:92) and on failure arms the
alarm "'БУДИЛЬНИК БЕЗ СТОП_А'" (mott.be:98), notifying the system that the
terminal dropped or the user is holding break.

## Two attachment paths

The sysgen section `ТЕРМИНАЛ СП,ВУ:…` (rukava.be:2730) distinguishes:

1. **Direct connection ("на прямую")** — the bit-banged path described
   above; teletype numbers 1–30, Consuls fixed at 31–32. Section `ТТ N`
   (rukava.be:2818) selects the interface width: N=0 → 12 teletypes,
   N=1 → 24.
2. **Through АС (аппаратура сопряжения) or the К-71 complex** — an outboard
   box performs the serialization and delivers whole 8-bit syllables via an
   interrupt (entry `ВХОДАС`, mott.be:141; ГРП bit 10, "ЗАПР. ГОТ. ШТАТНОЙ
   АС ТЕРМИНАЛОВ", rukava.be:102). The bit order arrives reversed on this
   path and is fixed by the `реверс` loop (mott.be:264). Device numbers
   1–77₈ are allowed here (rukava.be:2745).

## Upper level

User programs perform terminal I/O through **extracode Э71** (`e71tk.be`),
which validates the request (max message length 0500₈ words, e71tk.be:6),
manages per-task buffers, and hands the text to the ТЕРМ conversion block.
OS operator messages travel through **БНБОТ** (`bonbot.be`) to the operator
terminals designated at sysgen (`ТКАНАЛ`/`ШКОПТТ` sections,
rukava.be:2676, 2783). Completed input (CR, LF or ETX from the line) ends
reception (`КПД` — "конец приема, додвижка", mott.be:618) and wakes the
owning task.

## Glossary of key variables (МОТТ/ДИСП70)

| Name | Meaning |
|---|---|
| `вкан` | Output word, one bit per telegraph channel, rebuilt every bit-time |
| `ВКАНАЛ` | Echo bits (received bits repeated back to the line) |
| `символ` | Snapshot of line states read by `увв '4100'` this tick |
| `симво1` | Per-channel receive shift registers |
| `СЧПР1` | Tick counter (mod 5) — transmit phase / receive phase base |
| `РАБШК` | "Working scales": per-phase bit masks of channels currently receiving |
| `естьс` | Scale: channels with a completed received character |
| `ГТСЛ+8` | Per-channel cell holding the last received frame |
| `ТСЛ` | Per-line state words (48 lines, disp70.be:696) |
| `ТБЛ` | Per-line pointer to the current buffer record |
| `ТАБКОД` | Character translation table, internal code ↔ terminal codes (term.be:485) |
| `кодрег` | Pre-framed МТК-2 register-shift characters (ЦИФ/ЛАТ/РУС) |
| `ТАЙНА` | Echo-enable mask ("terminals with split duplex") |
| `ШКВЫД`, `ШЗПРИМ`, `ШКУСТР`, … | Various per-terminal bit scales (выдача in progress, receive inhibit, device type, …) |

## Summary

A 5-bit teletype "worked" on the BESM-6 like this: the operator's keypress
broke the line current for a start bit; the machine, woken by ГРП bit 31 if
idle, sampled the line every 4 ms, caught the edge, then sampled each 20 ms
bit cell near its center, reassembling start + 5 МТК-2 code bits + stop in
a per-channel shift register — all in the interrupt handler of the resident
kernel, for a dozen or two lines at once. Output ran the same machinery in
reverse: text was translated to МТК-2 with register shifts inserted as
needed, framed 8 bits per character, and shifted onto all lines one bit per
20 ms tick through a single parallel output register. The "UART" of the
BESM-6 was DISPAK itself.
