# The DISPAK Plotter Interface (Графопостроитель)

*Reconstructed from the disassembled sources of OS DISPAK for the BESM-6.*

## Overview

The sources contain **three distinct plotter attachment schemes**, reflecting
different installations. All of them funnel their operator messaging through
the nonresident module ТРУБКА, which owns the famous message

```
ВКЛ КОНД П’2ВК.Г↑’        (trubka.be:581)
```

— "ВК.Г" = *включи графопостроитель* ("turn on the plotter"), printed when
plotter output is pending but the device does not indicate readiness.

| Scheme | Trigger/data path | Status in this listing |
|---|---|---|
| Э50 '7600' direct control (`графу`) | polled: `УВВ '4153'` status, `УВВ '152'` data | conditional `∧ГРАФ` variant; the scheme that produces periodic ВК.Г |
| Calcomp via extracode ЭК 1205 (`ГРАФИК`) | interrupt: ПРП bit 8 → ГРП 37; data via `РЕГ '35'` | blocked in ОС-117/А (ПРП 8 conflicts with ДКС) |
| НИТИ scheme, ГП5/"Бенсон" (ДУДКА) | standard КВУ exchanges (КУС via `УВВ 7`), hooks ГРП 18 | К-71/НИТИ builds |

## Where the code lives

| File | Module | Role |
|---|---|---|
| `mott.be:1930-1999` | МОТТ, `.ГП` variant | Э50 '7600' plotter control: `ГРАФИ` (queue movements), `графу` (per-tick service), `нетгт` (watchdog), `труба`/`втрубу` |
| `trubka.be` | ТРУБКА (nonresident, Э50 '12xx' family) | extracode dispatch (ЭК 1201–1210), Calcomp `ГРАФИК`, Benson `ЗАХВ`, НИТИ `гпнити`, and the ВК.Г / "УСТ СРОЧНО" operator messages |
| `dudka.be` | ДУДКА (nonresident, ex-ГП5) | НИТИ-scheme plotter ("вероятно марки Бенсон"); patches the ГРП dispatch at `обвнп1+30` (= ГРП bit 18) |
| `disp70.be:1311` | ДИСП70 | `пусгра` — ГРП bit 40 (4 ms tick) vector that enters the plotter service before the teletype handler |
| `vzu.be:1743-1789` | ВЗУ | Э50 range decoding (Э50 '12xx' → nonresident ТРУБКА = `Е37`), `загл7а`/`загл7б` stubs for builds without a plotter |
| `rukava.be` | (operator's guide) | ГРП/ПРП bit documentation, sysgen sections `РПГ`, `САLСОМР` (rukava.be:2798-2814) |

Conditional-assembly flags (`ГБЛВ ∧К71,∧ГРАФ` at the top of МОТТ/ТРУБКА/ВЗУ)
select the variant: `∧ГРАФ=1` assembles the Э50 '7600' plotter control,
`∧ГРАФ=0` replaces it with stubs (`загл7б: пб ту10`) or with the
"произвольные действия в режиме ядра" version of Э50 '7600' (`эспец`,
mott.be:1883).

## Scheme 1: Э50 '7600' direct control — the ВК.Г producer

### Queueing output

A task issues extracode Э50 '7600'. The handler `ГРАФИ` (mott.be:1935)
copies the request into the resident `Б` block:

- `Б` — number of movements;
- `Б+1` — per-task pending bits ("plotter output pending"), set at `ПЕРОН`
  (mott.be:1953);
- `Б+2` — movement bit-scale / pen ("ШКАЛА", "ДВИЖЕНИЕ"; pen command goes
  out immediately via `УВВ '152'` at `УПРИН`, mott.be:1950);
- `Б+3…` — movement words;
- `Б+5` — "ЧАСЫ", a delay cell for movement timing.

### Per-tick service and the readiness poll

There is **no readiness interrupt** in this scheme. The service rides the
same ГРП bit-40 interrupt (4 ms, 250 Hz) that drives the teletypes and the
system clock: the vector `пусгра` (disp70.be:1311) loads `б+1` and enters
`графу` (mott.be:1965):

```
графу	по	ТУ10          nothing pending → on to the teletype handler
	увв	'4153'        read plotter status register
	и	Е20           test bit 20
	пе	нетгт         bit 20 = 1 → "нет готовности" (off / not ready)
	зп	БУДГРА+1      bit 20 = 0 → reset watchdog (acc is 0 here)
	сч	Б+5	ЧАСЫ      movement timing not elapsed → return
	пе 	ТУ10
	…                     pick next movement from Б+3(М16)
	увв	'152'         output one movement word
	…                     shift Б+2 scale, decrement Б
```

So the status convention is:

> **`УВВ '4153'` read, bit 20 (1-based; value 2^19 = octal 2000000):
> 1 = plotter off / not ready, 0 = plotter on and ready.**

When ready, one word per bit-time goes out through **`УВВ '152'`** (both
pen commands and movements).

### The watchdog and ВК.Г

The not-ready path `нетгт` (mott.be:1986):

```
нетгт	сч	БУДГРА+1
	слц	Е35           counter += 2^34 every 4 ms tick
	зп	БУДГРА+1
	пе	ТУ10          not wrapped yet → keep waiting
	нтж	Е48           wrapped → mark "message issued" (bit 48)
	зп	БУДГРА+1
	сч	Е37
	пб	ТВ41          call nonresident Е37 = ТРУБКА
```

The counter wraps after 2^14 ticks ≈ 65 s (2^13 ≈ 33 s on subsequent
rounds). ТРУБКА, entered with accumulator = 0, takes the `ВЫДТТ` branch
(entry check `НТЖ 0 / ПО ВЫДТТ`), points М16 at `ВКЛ` and prints
`П’2ВК.Г↑’` to the operator via `ТВ40`/`Е23` (`ВЫДТ`/`ВЫДТ1`,
trubka.be:402-407, 455). Result: while output is pending and bit 20 of
`УВВ '4153'` stays set, **"ВК.Г" is printed roughly once a minute**.

### What a simulator must provide

- Respond to the **read `УВВ '4153'`** with bit 20 **cleared** whenever the
  plotter is "on" and can accept a command (set it while off or busy).
- Accept and consume the words written with **`УВВ '152'`** (pen state and
  movements).
- No plotter-specific interrupt is needed; the polling is driven by the
  ГРП bit-40 4 ms tick that the machine already generates for the
  teletype/clock machinery.

## Scheme 2: Calcomp via extracode ЭК 1205 (interrupt-driven)

ТРУБКА dispatches the Э50 '12xx' extracode family (trubka.be:221-246;
cf. rukava.be:247-248: tract 24 = "РАЗДЕЛ ИСП. ГРАФОПОСТР. КАЛКОМП,
НЕРЕЗ. МОДУЛЬ ОС ТРУБКА - Э50 '1211'"). Entry ЭК1205 → `ГРАФИК`
(trubka.be:384):

```
ГРАФИК	СЧ Е8
	ПВ УСТПРП(М15)    enable ПРП bit 8 in МПРП (written to hardware via УВВ '34')
	СЧ Е9 / ПВ ТАЙМЕР  ~10 s timeout
	РОДОН := АВХОД     park continuation address
	…sleep…
	СЧ Е8 / ПВ ГАШПРП  disable the mask again
	СЧ РОДОН / И Е48
	ПЕ БУДИЛ           bit 48 set → interrupt came → РЕГ '35' outputs the data word
	→ ВЫДТ             otherwise → print "ВК.Г", retry
```

The ready indication here is a real interrupt:

- **ПРП** (периферийный регистр прерываний) **bit 8** — documented in
  rukava.be:186 as "СИГНАЛ ГОТОВНОСТИ ГРАФОПОСТРОИТЕЛЯ" (source: ТО-IX);
- ПРП requests surface as **ГРП bit 37**; the handler `тв218`
  (disp70.be:1240) reads ПРП with `УВВ '4030'`/`УВВ '4034'`, ANDs the
  software mask МПРП, gives bit 8 priority, clears the request with
  `УВВ '30'`, and dispatches through the `ОБВНП3` table (disp70.be:1389);
- the woken continuation (`АВХОД`, trubka.be:142) sets bit 48 of `РОДОН`,
  and `БУДИЛ` then outputs one word to the plotter via **`РЕГ '35'`** —
  i.e. Calcomp data is clocked out one word per ready interrupt.

**Blocked in this listing:** in the ОС-117/А (К-71) build the `ОБВНП3`
entry for ПРП 8 is a stub (`прп8: мода , / пб БМВ`, disp70.be:1421), and
the `мод РОДОН / пб` wake entry sits at the ПРП 14 slot instead — with no
one opening МПРП bit 14. This matches rukava.be:249: "ОС-117/А: РАБОТА
ЗАБЛОКИРОВАНА ВО ИЗБЕЖАНИЕ КОНФЛИКТА С ДКС (8Р. ПРП)" — ПРП bits 8-5 were
taken over by the ДКС (К-71 terminal complex), whose modules (СВЯЗЬ,
СВЯЗЬ7) patch the dispatch table at run time (svyaz.be:459 plants
`мод РОДОН / пб` into `ОБВНП3+24-6` and `+24-5`). So in ОС-117/А the
ЭК 1205 path always times out and prints ВК.Г regardless of any interrupt
a simulator could send.

A related штатный (non-К71) block in ТРУБКА (trubka.be:309-351, the
ГРАФАЛ/КОБГР scheme) parks its continuation in `РОДОН` and opens МПРП via
`УСТПРП` with `Е5` (ПРП bit 5), with the alarm counter seeded from `Е40`
into `БУДГРА`.

## Scheme 3: НИТИ scheme — ГП5 / "Бенсон" (ДУДКА)

For plotters attached "по схеме НИТИ им. Александрова" (dudka.be header;
"вероятно марки Бенсон"), the plotter is treated like a standard КВУ
device:

- ТРУБКА's `гпнити` (trubka.be:519) and `ОБМЕН` (trubka.be:120) build a
  КУС (control word) and start the exchange with `УВВ 7`, using КУС
  templates `кусгп5`/`кусгп3` (trubka.be:566-570) that address a КВУ
  direction like a drum/tape transfer;
- completion arrives as the direction-free ГРП interrupt (`Е25` = ГРП
  bit 25, opened via `ТВ67`), with a `П3777` timer as backstop —
  "ВОШЛИ ПО ПРЕР." vs "ВОШЛИ ПО БУД-КУ" (trubka.be:146-159); the timeout
  path returns error code `П77777` to the task rather than printing ВК.Г;
- `УВВ '31'` sets РБУС7 (trubka.be:157);
- the nonresident ДУДКА installs itself into the interrupt fabric by
  saving and replacing the dispatch word at `обвнп1+30` — i.e. **ГРП
  bit 18** (dudka.be:60-64), which rukava.be:115 documents as
  "ОС-117/А: ИСП. ДЛЯ ОБСЛУЖ. ГРАФОПОСТР. ПО СХЕМЕ НИТИ".

There is no "plotter on" bit in this scheme; readiness is implied by the
КВУ exchange completing.

## Quick reference: plotter-related I/O and interrupts

| Access | Direction | Meaning |
|---|---|---|
| `УВВ '4153'` | read | Plotter status; bit 20 = 1 → off/not ready, 0 → on (Э50 '7600' scheme) |
| `УВВ '152'` | write | Plotter pen/movement word (Э50 '7600' scheme) |
| `РЕГ '35'` | write | Calcomp data word, one per ready interrupt (ЭК 1205 scheme) |
| `УВВ '147'` | write | Э1204 path (trubka.be:378); also drives the operator "табло" (`БЖТ`, disp70.be:1873) |
| `УВВ '4030'` / `'4034'` | read | ПРП contents (at the ГРП-37 vector / in `тв218`) |
| `УВВ '30'` / `'34'` | write | Clear ПРП request bits / load ПРП hardware mask |
| ПРП bit 8 → ГРП bit 37 | interrupt | "Сигнал готовности графопостроителя" (Calcomp; blocked in ОС-117/А) |
| ГРП bit 18 | interrupt | НИТИ-scheme plotter service, hooked by ДУДКА |
| ГРП bit 40 | interrupt | 4 ms tick; `пусгра` polls the plotter before the teletype handler |
| ГРП bit 25 | interrupt | КВУ direction free — completion of НИТИ-scheme КУС exchanges |

## Summary for simulator authors

If the running system prints **ВК.Г** while plotter output is pending, it
is executing the Э50 '7600' polled scheme: satisfy it by returning **0 in
bit 20 of the `УВВ '4153'` read** (whenever the simulated plotter is on
and ready) and by accepting the stream of `УВВ '152'` writes. No dedicated
interrupt exists for "plotter switched on" in that scheme. The
interrupt-driven alternative (ПРП bit 8 + ГРП bit 37, data via `РЕГ '35'`)
belongs to the Calcomp path, which is deliberately disabled in the
ОС-117/А listing disassembled here.
