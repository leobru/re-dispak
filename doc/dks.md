# The DISPAK ДКС Interface: Terminals via КАДОПАМ (К-71)

*Reconstructed from the disassembled sources of OS DISPAK for the BESM-6.*

## Overview

In the ОС-117/А (К-71/НИТИ) configuration, terminals are attached through
the **ДКС** — a terminal concentrator built around an Электроника-60
micro — connected to the BESM-6 by the **КАДОПАМ** device (канал доступа в
память) and the **КРК** (канал разового кода) signalling channels. The
BESM-6 side of the link is:

- a nonstandard instruction, opcode **032/132** (rendered by the
  disassembler as `кк 26,…`), giving direct read/write access to a shared
  memory on the ДКС side plus two "doorbell" cells;
- **ПРП interrupt bits 8, 7, 6, 5** — one per КРК direction 0–3 — plus
  bit 12, all aggregated into ГРП bit 37;
- a producer/consumer **mailbox protocol** run in the shared memory:
  interrupt counters, a ring of abonent numbers, command buffers, and
  per-abonent data areas.

For a simulator, ДКС terminals become functional once all three are
provided; the OS installs its own interrupt vectors at run time.

## Where the code lives

| File | Module | Role |
|---|---|---|
| `svyaz7.be` | СВЯЗЬ7 | "Модуль организации связи БЭСМ-6 и ДКС через устр-во КАДОПАМ" — the whole protocol: event decoding, connect/disconnect, array transfer, doorbells, interrupt handlers, buffer address tables |
| `vzu.be:1795-1815, 1857-1873` | ВЗУ (К-71 blocks) | `кик7а` exchange-completion hook, `выдас7`/`кмас7` output routing into СВЯЗЬ7 |
| `mott.be:2003-2100` | МОТТ (ex-ХЛАМ1 block) | character-level receive (`прсим7`) and transmit (`прнол7`/`вдкс`) for ДКС terminals, feeding the common terminal pipeline |
| `eko.be` | ЭКО | automat driving ДКС connection setup |
| `konfus.be` | КОНФУС | `завобм` — exchange-completion scheduling invoked from the ПРП handlers |
| `svyaz.be` | СВЯЗЬ | older/related link module; also patches the ПРП dispatch (`D10377`, svyaz.be:459) |
| `disp70.be:1240-1260, 1389-1433` | ДИСП70 | ПРП handler `тв218` and the `ОБВНП3` dispatch table that СВЯЗЬ7 patches |
| `rukava.be:148-194, 2730-2756` | (operator's guide) | ПРП bit documentation with ОС-117/А ДКС annotations; sysgen `ТЕРМИНАЛ АС,…` section |

## 1. The КК instruction (opcode 032/132)

### Encoding

`кк 26,addr` is the disassembler's rendering of opcode 032. When the
operand includes `'70000'` the instruction's признак-19 bit is set and the
listing form is "132,N"; without it the form is "032,N".

### Semantics (as evidenced by the code)

> **Note.** The direction assignment below is derived from the code and is
> the *reverse* of one common description ("032 = write, 132 = read").
> The evidence is listed after the rules; verify against hardware notes.

- **Read (032 form, признак-19 clear):** the 16-bit ДКС word at the
  effective address is delivered into **accumulator bits 40–25** (the
  upper 24 bits). Every read in СВЯЗЬ7 is followed by `сда 64+24` to
  normalize the value down.
- **Write (132 form, признак-19 set):** the low bits of the accumulator
  (16-bit quantities) are written to the ДКС word at the effective address
  *minus the признак's `'70000'` contribution* (mod 2^15). Equivalently:
  признак-19 is an out-of-band function bit, and (12-bit address field +
  index modifiers) mod 2^15 is the remote address.
- Remote addresses of the ordinary buffers fit in 12 bits (the
  "МАСКА 7707 NNNN NNNN NNNN" convention, svyaz7.be:207; a "МАСКА 7701"
  variant also appears — the КАДОПАМ address-decode mask is
  configurable). Addresses `'77775'`/`'77777'` are the special РКС
  doorbell cells (see §2).

### Evidence

- Reads deliver to the upper 24 bits: `кк 26,'0'(М10) / сда 64+24 / и
  масsтр` (svyaz7.be:647-649), `кк 26,'1' / сда 64+24` (271, 410, 496),
  `кк 26,'0' / сда 64+24 / и П3` (379-381), etc.
- Writes have the accumulator prepared immediately before, several with
  explicit comments: `кк 26,'70000' .ЗАПИСЬ НОВ. ЗНАЧ. СЧЕТЧИКА`
  (svyaz7.be:858), `кк 26,'70005' КОД КОМАНДЫ / '70006' АДРЕС МАССИВА /
  '70007' ДЛИНА МАССИВА` (810-818), `кк 26,'70002'(М1) НОМ. АБОНЕНТА`
  (866), `кк 26,'70000'` after `мод адркс0` — "ПЕРЕДАТЬ НА Э-60 НА 0
  НАПР." (871-873).
- Paired access to the *same* cell with the *same* modifier: read the
  counter via `мод абуфh / кк 26,'0' / сда 64+24` (845-848), write it back
  via `мод абуфh / кк 26,'70000'` (856-858). Likewise the pair at 584/587
  and 647/650. A modifier cannot explain the direction difference — the
  признак bit does.
- Address arithmetic: `адркс0 конд в'77775'` is documented as "АДРЕС
  ЗАПИСИ (В РКС) ДЛЯ ПРЕРЫВАНИЯ S-МАШИНЫ" (svyaz7.be:1367-1369).
  `мод адркс0 / кк 26,'70000'` gives effective `'67775'`; adding back the
  `'70000'` wrap yields exactly `'77775'` — confirming the "subtract the
  признак contribution" rule.

## 2. Interrupts

### ДКС → БЭСМ-6

Each КРК direction *n* (0–3) raises **ПРП bit 8−n** (bits 8, 7, 6, 5):

- `успрп8` opens the МПРП mask with `E8(М17)`, М17 = direction
  (svyaz7.be:976-981);
- the handlers `ПРП8`/`ПРП7`/`ПРП6`/`ПРП5` (svyaz7.be:1221-1231) set
  М17 = 0/1/2/3 and converge on `набзс7`;
- rukava.be:186-194 annotates exactly these bits "ОС-117/А: ПРЕРЫВАНИЕ
  ДКС" (on the standard OS they belonged to the штатная АС and Consuls —
  hence the "conflict with ДКС" notes elsewhere).

**ПРП bit 12** is additionally used during direction-0 setup (`ПРП12`,
svyaz7.be:1202 — reads a 12-bit counter, "читается 12 разрядов").

The ПРП plumbing a simulator must provide (same as for Consuls):

| Access | Meaning |
|---|---|
| `увв '4030'` / `увв '4034'` | read ПРП contents |
| `увв '30'` | clear request bits (inverted-mask write) |
| `увв '34'` | load the ПРП hardware mask (МПРП) |
| ГРП bit 37 | aggregate: any unmasked ПРП request interrupts the CPU |

**Vector installation is done by the OS itself:** `фикпрп`
(svyaz7.be:1024-1031) copies handler words from the `уходы` table into the
addresses listed in `адреса` — literally `а(ОБВНП3+24-8)` …
`а(ОБВНП3+24-5)` and `а(ОБВНП3+24-12)` (svyaz7.be:1283-1297) — replacing
the `прп8…прп4` stubs in ДИСП70 (disp70.be:1421-1430). The simulator only
raises bits.

**Timing tolerance:** the acknowledge loop `гшпрп1` (svyaz7.be:1240-1250)
re-reads ПРП and re-clears the bit up to 4 times ("ПРЕРЫВАНИЕ УЖЕ
ПОГАШЕНО ПОСЛЕ 4 РАЗА"), and distinguishes "погасили быстро/медленно" —
so a bit that stays asserted while mailbox events are pending is
tolerated.

### БЭСМ-6 → ДКС (doorbell)

A KK-write to РКС cell **`'77775'`** (direction 0 — "ведущая Э-60") or
**`'77777'`** (directions 1+) interrupts the ДКС side (`прервs`,
svyaz7.be:843-875; tables `адркс0`/`адркс1`, svyaz7.be:1367-1375). The
simulated ДКС agent must process its mailbox when these cells are
written.

## 3. The mailbox protocol

Shared-memory layout, hardcoded in СВЯЗЬ7 (svyaz7.be:1343-1384);
direction-0 base addresses shown (directions 1/2/3 use `'010'/'140'/'4010'`
etc.):

| Base | Table | Contents |
|---|---|---|
| `'110'` | `абуфs` — interrupt buffer *from* ДКС | word 0 = **source interrupt counter**, word 1 = **receiver counter** (ack), words 2+ = **ring of abonent numbers** (ring mask `масотв` = `'7'` → 8 entries) |
| `'132'` | `абуфh` — interrupt buffer *to* ДКС | mirror of the above, maintained by the BESM (`прервs`) |
| `'154'` | `абфосs` — system requests from ДКС | word 0 = command code: 1 = connect terminal (`нтерм7`), 3 = disconnect (`отклтр`); words 1-2 = parameters (terminal number, abonent descriptor, area address) |
| `'157'` | `абфосh` — system requests to ДКС | word 0 = command code, word 1 = terminal number, word 2 = reply (`ответ`, svyaz7.be:466-490; code 2 = OK, 1 = "линия не доступна") |
| (per abonent) | data area | address delivered at connect time; words +5/+6/+7 = command packet: КОД КОМАНДЫ / АДРЕС МАССИВА / ДЛИНА МАССИВА |

### Inbound events (input typed, output completed, status change)

The ДКС agent: writes the abonent number into the `абуфs` ring at
(source counter mod ring size), increments the source counter, raises
ПРП(8−n). The OS (`запрос`/`обраб`/`завобр`, svyaz7.be:226-319) drains
events while the two counters differ, then writes the caught-up counter to
word 1 as the acknowledgment. Per event it reads the abonent's
status/S-words from the abonent area and writes the masked status back
(`кк 26,'0'(М10)` … `и масsтр` … `кк 26,'70000'(М10) S-СТАТУС`,
svyaz7.be:647-650). Abonent numbers ≥ 48 (`П60`) denote system requests
routed to the `абфосs` decoder (`ос`, svyaz7.be:377-391).

### Outbound text

The character pipeline (ТЕРМ → `прнол7` in МОТТ → `слдсмв` in СВЯЗЬ7,
svyaz7.be:743-765) packs terminal codes two bytes per 16-bit word —
"СТАРШИЙ БАЙТ - СЛЕВА" (svyaz7.be:753) — and KK-writes the array into the
abonent's area word by word. Then `прмсвs` (svyaz7.be:809-821) writes the
command packet ("прими массив": code, array address, length at area words
+5/+6/+7) and `прервs` rings the doorbell: read the Н-counter from
`абуфh`+0, increment (mod `масотв`), write it back, write the abonent
number into the `абуфh` ring, KK-write to the РКС cell. The agent renders
the text on the terminal and reports completion as a new inbound event
(`выднаh` — "ЗАВЕРШЕНА ВЫДАЧА НА Н-ТЕРМИНАЛ", svyaz7.be:655-674). Buffer
length limit: `длнбуф` = `'1171'` words (svyaz7.be:1330).

### Connect / disconnect

Connect (command 1 in `абфосs`): the OS checks the line, allocates it in
the scales (`новтер`, `шзпри7`, `ШКУСТР`, `ШКАЛ`, svyaz7.be:417-459),
stores the abonent descriptor and area address from `абфосs` words 1-2
into `туsаб+1`, and answers through `абфосh` + doorbell. Disconnect
(command 3) releases the line and pokes the terminal-lost alarm (`ttvt7`
path — "ОБРЫВ СВЯЗИ").

### Character level

Received ДКС characters flow through `прсим7` (mott.be:2012-2041):
translated via the `ячпрм` tables into the internal code and merged into
the same character pipeline (`ПОСОБЛ` → `НОВКОД`) used by the штатная АС
terminals. Output characters pass `прнол7`/`вдкс` (mott.be:2056-2079)
with their own translation (`масвыд`, `П215` codes) before being packed
into S-words.

## 4. Setup and configuration

- Sysgen: `ТЕРМ АС,ТТ:1-7,13-14,17-60` / `ТЕРМ АС,VТ:10-12,61-77` —
  "терминалы через ДКС" (rukava.be:2752-2756); device numbers 1–77₈
  except 31, 32. `СОЮЗ ДА` is mandatory "для ОС ДИСПАК с устройством
  КАДОПАМ" (rukava.be:2714).
- Run-time setup goes through extracode **Э50 '133'** (`Э50133`,
  svyaz7.be:879) driven by the ЭКО automat (`eko.be`); this is also what
  triggers `фикпрп`'s installation of the ПРП handlers and the МПРП mask
  bits (`успрп8`).
- Scales: `шкут` = "шкала терм. через АС (ТТ и VT)" (vzu.be:1813),
  `шкаэко`, `режим7`, `новтер` — per-line state, maintained by СВЯЗЬ7.

## 5. Simulator checklist

1. **Opcode 032**: implement read (признак-19 clear → 16-bit remote word
   into ACC bits 40-25) and write (признак-19 set → ACC low 16 bits to
   remote address = effective − `'70000'` mod 2^15) against a 4K-word
   shared memory, plus the РКС doorbell cells `'77775'`/`'77777'`.
2. **ПРП bits 8-5 and 12** with `увв '4030'/'4034'/'30'/'34'` semantics
   and ГРП-37 aggregation (this machinery is shared with the Consuls, so
   it may already exist).
3. **A ДКС agent** that: maintains the mailbox counters and abonent ring
   in the shared memory; generates connect requests (command 1 in
   `абфосs` + event + interrupt) when a simulated terminal attaches;
   delivers typed input as abonent events with S-words in the abonent
   area; consumes "прими массив" command packets by rendering the array
   as terminal output and reporting completion; reacts to doorbell writes.
4. Boot a system generated with `ТЕРМ АС,…` and `СОЮЗ ДА`.

## Caveats

The exact КАДОПАМ hardware model is only partially recoverable from the
code: the МАСКА 7701/7707 decode configuration, the physical multiplexing
of directions beyond the shared address space (direction 3 is annotated
"для работы с ЭВМ М-7000"), and which real Э-60 addresses the shared
window maps to are not visible from the BESM-6 side. The layout above is
what the OS actually reads and writes — which is exactly the surface a
simulator must reproduce. The 032-read/132-write direction assignment is
code-derived (see §1 evidence); if hardware documentation states the
opposite, reconcile before implementing.
