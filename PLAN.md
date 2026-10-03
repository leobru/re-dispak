# Removing КАДОПАМ/ДКС from Диспак: plan

Goal: build Диспак from the `re-dispak` sources without the КАДОПАМ/ДКС terminal
front-end (Электроника-60 machines reached through instructions 032/0132), and keep
the system bootable and working in SIMH at every step.

Line numbers refer to the baseline commit of this repository (= `re-dispak`
`7c6a963`). Background on the protocol: `~/git/besm6/simh/BESM6/doc/ДКС.md`,
`ЭКО.md`, `DW21.md`.

## Constraints and checks

**Fixed layout.** Zones and load addresses in `rvs.src` do not change. Modules
whose labels other modules use by address must keep those addresses: every
resident module (ДИСП70, ВЗУ, ТЕРМ, КАЧКА, КИТ, ГРУППА, ДИСКИ, РЕЗАРХ, МОТТ),
ГЕНС (generator cells 071740–071777 are copied in by ВЫДИНС), and КОНФУС (cells
exported to other modules). There, removed code is replaced by filler of the same
length (`пам n`, or a jump over the hole), so no exported label moves.

**After every step:**
1. `make build`: every module assembles with `ОШИБОК=0000`.
2. `verify.pl` (part of `make build`): only the zones of the edited modules
   differ from the original.
3. `tools/labels.py --check labels.base`: no label of the baseline moved
   (0 MOVED); labels of removed code are reported as gone. (The first steps
   used `tools/entries.sh | diff entries.base -`, exported labels only.)
4. `sim/run.sh` (or `make boot`): the OS boots, the job runs, the printout
   ends; the summary line `KADOPAM accesses: N` counts 032/0132 executions
   (logged by `set dks debug=KADOPAM`). Baseline: 2–3 reads of cell 0, from
   КОНФУС.`свядкс` polling. From phase 1 on it must be 0.
   `sim/term.sh` (or `make term`): a session on telegraph line 2 over telnet
   (script `sim/term.scr`: prompt, directive `ВРЕ`), same КАДОПАМ count.
   `sim/term.sh consuls` (also in `make term`): the same session on both
   Consul lines T031 and T032 (tty25, tty26), on a copy of the image where
   `sim/consuls.py` enables them as VIDI Videotons; this exercises the ПРП
   vectors 12/11 (receive) and 10/9 (output).
5. One commit per step.

`tools/check.sh` runs checks 1–4 in one go and ends with `### ALL CHECKS OK`.

`tools/xref.py NAME…` lists the uses of names in the label/address fields
(case and Latin/Cyrillic look-alikes folded); `tools/k71blocks.py` lists all
`∧К71` conditional blocks with their sizes.

## Conditional assembly is not enough

Setting `∧К71 УСТВ 0` everywhere does not assemble: 45 errors in 10 modules
(ТЕРМ, ВЗУ, ХЛАМ, ДИСКИ, МОТТ, БОЭК1, ДИСП70, ТРУБКА, ГП2, КОНФУС), nearly all
undefined labels. Much ДКС code is unconditional, e.g. `term.be:115`
`пб выдас7`, `term.be:418` `пб кмас7`, ВЗУ `кик7а`, БОНБОТ `*** ДКС ***`. Also,
`∧К71` switches far more than ДКС (below). Where a module does have a "штат"
variant (`АПУ (&К71).ДА` … `АПБ .НЕТ`: lines before `АПБ` = штат, after `.ДА` =
К-71), it is used as a reference. It has never been assembled into the binary
we compare against, so each one is checked before use.

## Scope

### ДКС (to remove)

| Module | Zone | What | Where |
|---|---|---|---|
| СВЯЗЬ7 | 0677 | the whole protocol, ПРП 8–5/12 handlers, Э50 '133' body | `svyaz7.be` (all) |
| ЭКО | 0567 sect. 0 | fast path of Э50 '133' for a user task | `eko.be` (all, one К-71 block 26–366) |
| ЭК7 | 0607 | Э50 '133' entry `Э133` (loads СВЯЗЬ7), `изсв7` (remote disk error trace, called from СВЯЗЬ7) | `ek7.be` (all, one К-71 block 9–325) |
| КОНФУС | 0676 | cold-start block `кзк71` with Э50 '133' `МАСДКС`; СВЯЗЬ7 loader and "attention" decoder `нстдкс`/`нсдкс1`/`свядкс`; `экозап`, `завобм`, `начало`; cells `базсв7` `туsаб` `новтер` `обмен7` `обме7б` `рабнст` `шкошиб` `режим7` `шсост7` `рсвсм1` `рсвясм` `базэко` `слркс0/1` `тестс7` | `konfus.be:482-525`, `755`, `760-962`, ВНЕШ/ВХОД `983-1001` |

Hooks in other modules:

| Module | Site | What it does |
|---|---|---|
| НОМБОБ | `nombob.be:316-346`, `1496-1507` | `диасм7` (from `ЗВ2`, alarm-clock path) → КОНФУС.`нстдкс`: loads СВЯЗЬ7, installs ПРП vectors, polls cell 0 |
| ДИСП70 | `disp70.be:1815-1822` | `КИК` → ВЗУ.`кик7а` on every task switch (штат: falls into `КИК1`; `КИК` is used by ЯНУС and ХЛАМ) |
| ВЗУ | `vzu.be:1791-1815` | `кик7а`: re-selects the task's КАДОПАМ channel (`кк 26,'70000'`); cells `шзпри7`, `шзагс7`, `шкут` |
| ВЗУ | `vzu.be:1857-1873` | `выдас7`, `кмас7`: output to ДКС terminals → СВЯЗЬ7 |
| ВЗУ | `vzu.be:1875-1888` | `Э1`: hands Э50 '133' of tasks in `шкаэко` to ЭКО |
| ВЗУ | `vzu.be:2183-2208` | ВНЕШ/ВХОД |
| ТЕРМ | `term.be:115`, `317-322`, `418`, `465-471`, `200-202`, `427`, `452-455`, `659-669` | start/char/end of output to ДКС lines (`выдас7`, `прнол7`, `кмас7`, `км2бк7`); `штерм7` |
| МОТТ | `mott.be:2001-2142` (block N3, ex-ХЛАМ1) | `прсим7`, `прнол7`, `вдкс`, `км2бк7`: character I/O for "АС К-71" lines (`шкут`, `шкэт`) → СВЯЗЬ7 |
| МОТТ | `mott.be:278-282`, `1875`, `2418-2419`, `2537-2569`; `шзпри7` at `185-186`, `654`, `1338-1339`, `1425-1426` | call of `прсим7`; cells `базсв7`, `бсв7ма`, `бсв7мб`; ВНЕШ/ВХОД |
| ДМЛМБ | `dmlmb.be:404-419`, `1886-1903`, `2354-2361` | drum-exchange hooks → СВЯЗЬ7.`вдмлмб`/`св7мб` |
| ЭКВВОД | `ekvvod.be:180-181` | Э50 '133' → ЭК7.`Э133` |
| КЗ | `kz.be:46-52`, `456-464` | cold start calls КОНФУС.`кзк71` |
| ПРИКАЗ | `prikaz.be:261-268`, `362-371`, `1531-1539` | `шсост7` ("ДКС state": silent refusal of ВЦПП for tasks on a remote machine) |
| ПРИСКВ | `priskv.be:20-25`, `577-583` | the same; штат keeps a local `шсост7` |
| БОНБОТ | `bonbot.be:147-153`, `2043` | no carriage return for `шкут` lines |
| ГЕНС | `gens.be:491-492`, `552` | copies СВЯЗЬ7 (zone 0677) to the drum at startup (`куссв7`) |
| ГЕНС1 | `gens1.be:347`, `1618` | `шкут := СЛОN`: every free logical line may become a ДКС line |

Left as is (harmless text): АВРАСП `avrasp.be:1490` alarm text 29 «НЕ ГОТ. КАДОПАМ».
The default ПРП vectors in ДИСП70 (`ОБВНП3`) are already the non-ДКС ones; only
КОНФУС patches them at run time.

### Other К-71 features (kept unless decided otherwise)

These are switched by `∧К71` too, but do not use КАДОПАМ:
- Э52 '7777' "trusted link" for АНИС-6. Removed in phase 5 (decision D).
- КОНВОЙ checkpoint tracing and remote-disk tests through the disk channel.
  Removed after phase 2 (it could only be switched on through ЭК7), see
  Progress.
- DW-21 printer on the АЦПУ channel (КОНФУС, ПЕЧАТЬ, ПРИК4). Removed in
  phase 4 (decision D).
- Plotter stubs `загл7а`/`загл7б` (ВЗУ, ДИСП70, ГП2, ПУСКАЧ, ТРУБКА).
- `шкэт` terminal handling (МОТТ `прсим7`, `прнол7`, `км2бк7`, called by ТЕРМ).

The АС and ТАБЛО blocks in НОМБОБ, ТЕРМ `rt` and the АС blocks of МОТТ are
not К-71 features: they are штат code that `∧К71` assembles out. ТАБЛО is
back (see Progress); the АС parts belong to phase 6.
- ХЛАМ Э62 '6200'–'6203' → `Э62ГРУ` (used to take КОНФУС.`шкраб7`'s address as
  the constant, now `слиа -'6200'`).
- ТЕРМАС handlers at `обвнп3-6`/`обвнп3-4` instead of the штат ПРП 12/10
  vectors (see Progress).
- `маспр7` in ЭК2, КЗ1, ПРИК7 ("не шифр подсист. МРВ"; now in МОТТ, was in
  КОНФУС).
- МОТТ block N1 (`mott.be:133-260`, `аск71`: КРК terminal detection) and block
  N2 (`mott.be:1373-1441`, `вдк71`: modified telegraph-line I/O). They replace
  the МОТТ-100 multiplexer path (`ВХОДАС`, ПРП 8). Block N1 mentions the КРК
  equipment "с прямым доступом в память Э-60" and reads `шзпри7`, so it is
  partly ДКС; see decision A.

## Phases

### Phase 1: disconnect (small, address-preserving edits) — done

Make every ДКС path unreachable without removing code yet:
1. НОМБОБ `диасм7`: do not go to `нстдкс`. СВЯЗЬ7 is then never loaded, ПРП
   vectors stay at their defaults, cell 0 is never read. Expected:
   `KADOPAM accesses: 0`.
2. ЭКВВОД: Э50 '133' takes the path of an unimplemented extracode (to be
   determined from the neighbouring table entries).
3. ГЕНС1: `шкут := 0`, so ТЕРМ, МОТТ, ВЗУ and БОНБОТ always take their
   non-ДКС branches.
4. ГЕНС: do not copy СВЯЗЬ7 to the drum.
5. КЗ: do not call `кзк71`.

Then add a second test: a terminal session on a user telegraph line
(`sim/term.sh`), so that the ТЕРМ/МОТТ paths with `шкут = 0` are exercised
on a line other than the operator console.

### Phase 2: remove the dead code, module by module — done

Leaves first, so that each step still assembles: ДМЛМБ, ПРИКАЗ, ПРИСКВ,
БОНБОТ, КЗ, ЭКВВОД, ГЕНС, ГЕНС1, НОМБОБ, ТЕРМ, ВЗУ, ДИСП70, МОТТ (block N3
and the `шзпри7` uses), КОНФУС (the ДКС blocks and cells). Use the штат
variant where there is one, otherwise delete; pad in the fixed-address
modules. ВНЕШ/ВХОД lines go together with the code.

### Phase 3: drop the modules — done (together with phase 2)

Remove СВЯЗЬ7, ЭКО and ЭК7 from `Makefile` and `rvs.src`. Zero their zones in the
image (0677; sector 0 of 0567; ЭК7's part of 0607) with a `mkdisk.py` option, so
that any remaining load attempt fails loudly instead of loading the old code.

### Phase 4: remove DW-21 support — done

DW-21 is a К-71 addition, but the printer is only a subset of the standard
АЦПУ-128, so the support is not worth keeping. Only a few parts are assembled
out by `∧DW21 УСТВ 0` (`konfus.be:9-10`, `pechat.be:5-6`); most of the code is
unconditional and runs on every print job:
- ПЕЧАТЬ: `НАЧАЛО` calls КОНФУС.`начdw` (`pechat.be:45-47`); the per-character
  block `пркдdw`/`пркdw1`/`пркdw2` (`269-339`) and the `шdw21б`/`е17dw` test in
  the output path (`351-354`, `376`, `404-406`); the DW-21 buffer write
  (`657-711`, with the jump to КОНФУС.`авdw21`); the `шdw21`/`шdw21а` uses
  (`123`, `753`, `846`); the accounting trailer `учетdw`/`учтdw1`/`тучdw1`
  (`1164-1296`, `1401`, `1427`); cells `режdw1`, `режdw2`, `cимвdw`.
- КОНФУС: block "ПЕЧАТЬ" (`konfus.be:491-571`: `начdw`, `авdw21`, `пркод7`,
  the `шdw21*` cells, `е17dw`, the recoding table `ТАБЛИЦ`) and its ВНЕШ/ВХОД.
- ПРИК4/КОНФУС: `вых1к7` and `шпр4к7` (`prik4.be:300`, `konfus.be:699-715`,
  `pechat.be:110-111`). Check first whether they belong to DW-21 or are a
  separate К-71 change of ПРИК4.

Use the штат variant (plain АЦПУ-128 path) where the source has one; otherwise
remove with same-size reserves, as in phase 2. Test: the batch job's printout
must stay unchanged (apart from date and time).

### Phase 5: remove Э52 '7777' — done

The "trusted link" extracode for the АНИС-6 resident (НИТИ). ДИСП70 sends every
Э52 to КОНФУС.`Э52777` (`disp70.be:255-263`), which returns to `ПЕЭ52` unless the
address is '7777'. The штат variant `пб пеэ52` is still in the source, so:
- ДИСП70: use the штат branch of the `э52к71` block and drop
  `КОНФУС ВНЕШ Э52777` (`disp70.be:2764`).
- КОНФУС: the `Э52777` block (`konfus.be:18-236`, `Э52777` … `ш52гус`) becomes
  a reserve; drop `Э52777` from ВХОД and, if nothing else needs it, `ПЕЭ52`
  from the ДИСП70 ВНЕШ line.
Test: Э52 with an ordinary address still works, and Э52 '7777' from a user task
gets the same handling as in the штат system.

### Phase 6: enable МОТТ-100 and fix the ШКАС setup in ГЕНС1 — next

**Reference: ЯНУС.** The kernel debugger (`janus.be`) drives the АС hardware
directly and is the definitive description of the interface; МОТТ-100 does
the same in its штат text (`ВХОДАС`):
- `увв '143'`: send a 16-bit syllable; `увв '4143'`: read the received
  syllable, then `увв '153'` releases the receive register (after every
  read, in ЯНУС `ЖДСЛСЛ`, `G50415`, `ЖДИВЫД` and in `ВХОДАС`).
- `увв '4034'` reads ПРП: E7 = syllable received, E6 = ready to send;
  `увв '30'` clears the bit; ЯНУС opens the mask with `МПРП := П140`. So the
  АС uses ПРП 7 (input) and ПРП 6 (output), as SIMH does (`PRP_MUX_INPUT`,
  `PRP_MUX_DONE`); the «8Р. ПРП» in the МОТТ comment is not the bit number.
- Syllable: physical line in bits 14-9 (`сда 64-8`; ЯНУС takes it from
  panel cell 4, low 6 bits, < 060), character in bits 8-1. Out: data =
  line<<8 | character; service = line<<8 | E15 | (`ГОД` ∧ 7, the machine
  number) | code, with code E8 = line reset (the reply must have
  syllable ∧ П30 = E4) and E4 = start of output. In: E15 = service syllable,
  E16 = parity error (`ВХОДАС` → `КЧС1`).

**State of this build.** The АС path is not used at all: a test run logs only
the one `MUX: clear` from ГЕНС1 `увв '153'`.
- МОТТ: `ВХОДАС` (block N1) is the штат text of an `∧К71` block, so it is
  not assembled; the К-71 text `аск71` is entered from the monitor loop
  (`НАЧАЛО`: `по аск71` instead of `по ВЫХМОН`). Block N2 (`вдк71`) and the
  `ДА4А`/`ДА4Б` blocks are К-71 versions as well.
- ДИСП70: the ПРП 7 and 6 vectors (`прп7`, `прп6`) go to `БМВ`, and nothing
  installs `ВХОДАС` there. ГЕНС1's header says the listing lost lines
  398-425 and 1345-1348 («АС») and 1239-1245 («ТЕРМАС»); presumably the
  vector setup was there (not checked).
- `ШКАС` (logical lines on АС) and `АСОТ` (8 × 6 bits, physical lines of the
  operator terminals on АС) are never set at startup. SIMH instead stores
  `ШКАС` := E48 and `АСОТ` := `0101010101010101` into МОТТ (077023, 076774)
  on every `увв '153'` (`besm6_cpu.c`). Since МОТТ-100 and ЯНУС issue
  `увв '153'` after each received syllable, this patch would overwrite the
  run-time `ШКАС` (set by `ПИЛОТ`/автоподключение, cleared on disconnect) on
  every character: it has to go once the OS sets these cells itself, which
  means a SIMH change (not done here unless asked).
- ГЕНС1 `ТЕРАС` builds `ТАС`, indexed by physical line and giving the
  logical number (`ВХОДАС`: `мод ТАС(М17)`; 0 = автоподключение `АС1`). Its
  test is stubbed out (`счи 0` / `пб НЕТТЕР`, comments «надо И Е48+47(М16)»,
  «надо ПО vt»), so every line auto-connects; that may be acceptable, to be
  decided.
- МОТТ `усвд`: after the `ДА4А` block the common code does `или '7777'` /
  `зп '7777'` (absolute cell 07777) where the МОТТ-100 text has `шас01`.
- All 12 configuration variants have the АС words empty (`ЯШАС`/`ШАС128`,
  `NТАС`, `ШКТТ`, `ШКТТ2` = 0).

Steps:
1. МОТТ: use the штат (МОТТ-100) variants of block N1 (`ВХОДАС`), the
   `НАЧАЛО` branch, block N2 and `ДА4А`/`ДА4Б`, checking each against ЯНУС;
   `'7777'` → `шас01`. This revisits decision A.
2. ГЕНС1: set `ШКАС`/`АСОТ` (operator terminals on АС), install the ПРП 7/6
   vectors and open them in `МПРП`, as the removed АС lines presumably did;
   decide on `ТЕРАС`.
3. Configuration: describe at least one АС line in the test image.
4. The other штат АС code that `∧К71` assembles out:
   - НОМБОБ: the АС part of block ДА1 (`СЧ ЗАНЯТА` … `АС761` … `ПВ УСТПРП`,
     after the ЗВ1 loop; it now ends in `пб АС76`, the ТАБЛО code), block ДА2
     (штат `АС762`; К-71 has a stub `АС762 ноп`, the target of СМЕНА1's
     `пе/пб АС762-Н(М7)` «ДР. БОБ.»), block ДА3 (`ТЕРМ ВНЕШ rt`) and the
     commented-out `ПЕ АС762` in the ЗВ1 loop.
   - ТЕРМ: `rt` (`term.be:613-615`) and its `ВХОД` (`term.be:652-661`).
   - МОТТ: the штат АС blocks (`mott.be:133-260`, 596-608, 806-882, 895-905,
     924-951, 964-1135, 1142-1210, 1659-1667, 1734-1745, 1780-1788), part of
     step 1.
   Like ТАБЛО, any growth must not move labels: НОМБОБ ends just below
   Н+'1400' (011400), where СТАТ1С/СТАТ2С are loaded.
Test: a terminal session on a mux line (SIMH `set ttyN` on the mux), with
`ШКАС`/`АСОТ` coming from the OS, which needs SIMH without the `увв '153'`
patch.

## Decisions

- **A. МОТТ blocks N1/N2:** keep the К-71 versions; remove only the ДКС reads
  (`шзпри7`). To be revisited in phase 6 (МОТТ-100).
- **B. Other К-71 features:** keep for now; possibly removed in a later pass.
- **C. Zones of removed modules:** zero them.
- **D. DW-21 and Э52 '7777':** remove (phases 4 and 5); exceptions to
  decision B.
- **E. КОНВОЙ:** removed now, since nothing can switch it on any more.

## Progress

**Phase 1 done.** Each edit replaces instructions one for one, so no module
changes size (`мода 0` is the no-op, as in `benson.be:354`):
- НОМБОБ `диасм7`: `по нстдкс` → `пб НЕЗАВИ`.
- ЭКВВОД, table entry 133: `СЧ 0` / `ПБ Э105Г`, like the other unused
  extracodes (145, 175, 200, 201, 220).
- ГЕНС1: `зп шкут(М10)` → `мода 0`.
- ГЕНС: the СВЯЗЬ7 copy (`уиа куссв7…`, `пв ОБМПМБ`) → two `мода 0`.
- КЗ: `пв кзк71(М1)` → `мода 0`. (КЗ is end of task, not cold start; `кзк71`
  clears the task's ДКС state and sends Э50 '133' for ЭКО tasks.)

Result: zones 0420, 0426, 0551, 0552, 0573 change; exported labels unchanged;
the job and the terminal session work; КАДОПАМ accesses 0.

**ПРП 12 and the Consuls.** КОНФУС.`нстдкс` (`konfus.be:848-869`) loads
СВЯЗЬ7 even when no ДКС is present and copies the five `уходы` entries of
СВЯЗЬ7 into the ПРП vectors listed in `адреса`: ПРП 8, 7, 6, 5 and 12. ПРП 12
is the receive interrupt of Consul 0 (T031; default `уиа (М16) / пб прсn`,
`disp70.be:1413-1414`); СВЯЗЬ7.`ПРП12` reads КАДОПАМ cell 0 and drops the
character. In the baseline T031 therefore gets no input at all (T032 works);
memory at 04050 shows `мод базсв7`. ПРП 11, 10, 9 (T032 receive, T031/T032
output) are never patched; СВЯЗЬ7.`фикпрп` only uses entries 0–3 (ПРП 8–5).
After phase 1 СВЯЗЬ7 is not loaded and all vectors keep their defaults.
In addition the fifth `уходы` entry is now the default ПРП 12 code itself
(`уиа (М16) / пб прсn`, the same word as in ДИСП70), so even when СВЯЗЬ7 is
loaded ПРП 12 stays with the Consul (checked by booting the baseline image
with only zone 0677 replaced: both Consuls work, ПРП 8–5 point to СВЯЗЬ7,
ПРП 12 unchanged). СВЯЗЬ7.`ПРП12` is now unreachable.

ТЕРМАС (НЕРПА network driver over Consul 0, never started in this build: no
module calls its entry `ВХПУСК`) installs its handlers at `обвнп3+12` (ПРП 12)
and `обвнп3+14` (ПРП 10) in the штат variant, but at `обвнп3-6` and
`обвнп3-4` in the К-71 variant (`termas.be:340-357`), i.e. over the ГРП 17 and
ГРП 13 vectors. This is not ДКС code; restoring the штат variant is left for
the later pass over the other К-71 features (decision B).

**Phase 2 done, together with phase 3.** The modules could not be dropped
separately: СВЯЗЬ7, ЭКО and ЭК7 import the ДКС cells of ВЗУ, МОТТ and КОНФУС,
and those modules import labels of СВЯЗЬ7 and ЭКО. Every removed piece of code
is replaced by a reserve of the same size (`мода 0` inside straight-line code,
`пам n` after an unconditional jump), marked «РЕЗЕРВ: АДРЕСА НЕ СДВИГАТЬ», so no
remaining label moves (`tools/labels.py --check labels.base` shows only gone
labels). Non-ДКС К-71 features stay (decision B): the `шкэт` terminal handling
(МОТТ `прсим7`, `прнол7`, `км2бк7`; ТЕРМ calls them), the АС/ТАБЛО blocks in
НОМБОБ (actually штат code, see «ТАБЛО enabled»), МОТТ blocks N1/N2 without the `шзпри7` reads, КОНФУС Э52 '7777',
КОНВОЙ (removed later, decision E) and DW-21 parts, `маспр7` and `шкраб7`
(used by ЭК2, ПРИК7, КЗ1, ХЛАМ).
- ДМЛМБ, ПРИКАЗ, ПРИСКВ, БОНБОТ, КЗ, ЭКВВОД, ГЕНС, ГЕНС1, НОМБОБ: hooks and
  ДКС imports removed.
- ТЕРМ: output start goes straight to БОЭК1.`боэте4`; `КМ` does
  `уиа E45(М10)` itself; `С373` and the `штерм7` uses removed.
- ДИСП70: `КИК` restores М17 itself (`сч И17 / уи М17`); the Э50 entry `Э`
  goes straight to `э1а`, so Э50 '133' is an ordinary unused extracode (a test
  task issuing it ends normally, exactly as with Э50 '145').
- ВЗУ: `кик7а`, `выдас7`, `кмас7`, `Э1` and the cells `шзпри7`, `шзагс7`,
  `шкут`, `шкаэко` removed.
- МОТТ: the `шкут` test in `прнол7`, the `шзпри7` reads, `штерм7`, `бсв7ма`,
  `бсв7мб` removed.
- КОНФУС: `кзк71`, `МАСДКС`, the СВЯЗЬ7 loader, `начало`, `экозап`, `завобм`,
  `нстдкс`/`свядкс` and all ДКС cells removed.
- СВЯЗЬ7, ЭКО, ЭК7: removed from `Makefile`, `modlist.src`, `rvs.src`, and their
  sources deleted. In `rvs.src` consul and сме now head their zone groups at
  their old addresses (011000 in 0567, 011400 in 0607); their sectors are
  unchanged. `mkdisk.py --zero` fills zone 0677, sector 0 of 0567 and sectors
  0–2 of 0607 with numeric-tag zeros.

**Follow-up sweep for missed ДКС code.** No `кк 26` (032/0132) is left in the
built sources. Removed in addition (same-size reserves, no label moved):
- КОНФУС: the unused jump block at `КОНФУС+'1000'` (`дпрез7`, `ВХОДПР`,
  `кнцэ7*`, `оши7`, `вхдпр7`) with `шккз7`, which only the ДКС cold-start
  block `кзк71` set; `тстнмл` («ДЛЯ ДРУГОЙ ВЕРСИИ ДКС»), `масмл1–8`, `cчпб15`,
  `т60и`. Nothing ever called them.
- Exports left without importers: ХЛАМ `вхлам7`, МОТТ `ук`, `гтмдл7`, `шмлк71`.
- Misleading comments: ДИСП70 `ТУС` slot Е24 is ОСА (its base 040000 is used
  by ЕСПИ80, ЕСПЛ, В3В4; К-71 only borrowed the slot for СВЯЗЬ7 at run time);
  ГЕНС `ОБМК` clears page 023, not СВЯЗЬ7; БОНБОТ `КОМЛИН` opens ПРП 6 like
  the other МОТТ-100 output starts, not "через ДКС".

Not ДКС, kept: МОТТ `шкот7` (written by ТРУБКА), the `G71136` block in КОНФУС
(unreferenced, not DW-21 either, kept in phase 4), МОТТ block N1 (decision A).

**КОНВОЙ removed (decision E).** Tracing was switched on only by ЭК7 (the
`дайлт` branch of Э50 '133' fills `бат`/`ук` and loads the КОНВОЙ zone);
nothing else writes `бат`. Each hook did `сч A(продолжение)` / `пб дт…`, and
with `бат = 0` the МОТТ gate jumped straight to the continuation with acc = 0.
- ДИСКИ (`нпр1`, `прмд`, `тмдоб7`, `enq3`, `qc`, the `ДА12А` block) and АВМД
  (`опрд1`, `аварк7`): each hook is now `сч 0` plus three `мода 0`, which falls
  into the continuation with acc = 0. ХЛАМ still jumps to ДИСКИ.`тмдоб7`.
- МОТТ: section «КОНВОЙ» (gates `дтпре`, `дтпро`, `дтобщ`, `дтав` and cells
  `вых1`…`рк71`) → reserve.
- КОНФУС: trace handlers `тпрер`, `тпроц`, `тобщ`, `тав` (`КОНФУС+'600'`) →
  reserve; unused imports dropped.
- ГЕНС: `уиа тип1(М3)` → `уиа '77526'(М3)` (same value; the address of the
  former МОТТ cell).
- КОНВОЙ removed from `Makefile`, `modlist.src`, `rvs.src`; source deleted;
  zone 0744 zeroed by `mkdisk.py --zero 0744`.

Result: zones 0551 (ГЕНС), 0605 (АВМД), 0625 (group КАЧКА…РЕЗАРХ, with
ДИСКИ), 0627 (МОТТ) and 0676 (КОНФУС) change, 0744 is zeroed; no label moved;
`tools/check.sh` passes.

**Phase 4 done: DW-21 removed.** Without DW-21 the КОНФУС cells held fixed
values (`шdw21` = П30, `шdw21а` = П140, no DW bits in `шdw21б`), so their uses
became those constants; ПЕЧАТЬ now imports `П30` from ДИСП70. All removed code
and cells are same-size reserves; the `∧DW21` switch is gone from both modules.
- ПЕЧАТЬ: `НАЧАЛО` no longer calls `начdw`; the per-character block `пркдdw`
  and its call; the special-buffer branch `по бвывdw` and the chain
  `бвывdw`…`прибав`, `спецоб` (from `пчтном`), `учетdw`…`бфдисw` with the
  accounting trailer «НА ЛИСТАХ … DW-21»; `чтспец` goes straight to `чтобщ`;
  `выдсб` jumps to `ВЫДОПТ` instead of КОНФУС.`авdw21`; `гасгрп` goes to
  `зпупря` (`счзон` was non-zero only in the DW chain); cells `режdw1`,
  `режdw2`, `абуфdw`, `первая`, `прбсек`, `рбтdw1/2` and others. `cимвdw` and
  `NНПРDW` are general working cells despite the names and stay.
  The `бвывdw` branch was taken for print buffers with bit 31 of the first
  word clear; РОБОТ always sets that bit on its own print tracks (and halts if
  it is missing), so only foreign DW-21 buffers took it. A `стоп` placed there
  before the removal was never reached by the test job.
- ПРИК4/КОНФУС: `вых1к7` set `шпр4к7`, which ПЕЧАТЬ copied into `шкприк` so
  that `НОЛЬ` skipped printer interrupts after ПРИК4; the штат text of that
  ПРИК4 block is empty, so it belongs to DW-21. The call is `мода 0`; ПЕЧАТЬ
  now stores 0 into `шкприк`.
- КОНФУС: block "ПЕЧАТЬ" (`начdw`, `авdw21`, `пркод7`, `шdw21*`, `е17dw`,
  `ТАБЛИЦ`) and `вых1к7`/`шпр4к7` → reserves; ВХОД and ВНЕШ lines trimmed.
  `G71136` (unreferenced, not DW-21) stays.

Result: zones 0401 (ПЕЧАТЬ), 0534 (ПРИК4) and 0676 (КОНФУС) change; no label
moved; `tools/check.sh` passes; the job's printout equals the one from the
previous build except for the time in the banner.

**Phase 5 done: Э52 '7777' removed.**
- ДИСП70: `э52к71` uses the штат branch `зп СМ` / `пб пеэ52` (same size);
  `КОНФУС ВНЕШ Э52777` dropped.
- КОНФУС: the block `Э52777`…`ш52гус` (070000–070153) → `пам 108` reserve;
  `Э52777` dropped from ВХОД. The only code left (`G71136`) needs just
  `ВРЕМЯ`, so the ВНЕШ lines shrink to `ДИСП70 ВНЕШ ВРЕМЯ`.

Test jobs: Э52 with address 0 on acc = 0 returns cos 0 (+0.999999999998),
as before. Э52 '7777' from a user task now ends it with «ЗАПРЕЩ.ЭКСТРАКОД»
(`ПЕЭ52` → `КОСИН` → `ЗОВЫ`, the штат handling); the old build returned all
ones in the accumulator (the `э52вых` refusal of the trusted-link code).

Result: zones 0621 (ДИСП70) and 0676 (КОНФУС) change; no label moved;
`tools/check.sh` passes; the job's printout is unchanged apart from times.
КОНФУС now holds only `маспр7`, `шкраб7` and `G71136`; the rest of the zone is
reserves.

**КОНФУС removed.** Its last users did not need the module:
- ХЛАМ (Э62): `слиа шкраб7(М16)` / `счи М16` / `слиа '6200'(М16)` used only the
  address 071600 = −'6200' (mod 2¹⁵), testing for Э62 addresses
  '6200'–'6203'. Now `слиа -'6200'(М16)`, the same instruction word
  (`16 25 71600`); `КОНФУС ВНЕШ шкраб7` dropped.
- `маспр7` (ПРИК7, КЗ1, ЭК2): moved into the МОТТ reserve left by КОНВОЙ
  (077461, `пам 52` → constant + `пам 51`), exported by МОТТ; the importers
  now say `МОТТ ВНЕШ маспр7`.
- `G71136`: unreferenced, gone with the module.
- КОНФУС removed from `Makefile`, `modlist.src`, `rvs.src`; source deleted;
  zone 0676 zeroed by `mkdisk.py --zero 0676`.

How КОНФУС got into memory: ГЕНС1 tests ТРАКТЫ E28 («СЭВМ ДА»); if set, it
closes page 034 (`ШКЗЛ` E20) and stores `КЛСВ` (zone 0576 + `НОММЛ1` = logical
0676, page 034) into ДИСП70.`КУСЛСВ`; ПРИК4 at the first directive 16 reads
that zone into 070000 and clears `КУСЛСВ` (`prik4.be:288-294`). So КОНФУС sat
in the page of the СЭВМ (inter-machine link) module. E28 is set in all 16
configuration variants. With no СЭВМ module it only closed page 034 and read
the zeroed zone 0676 into it, so `mkdisk.py --trakty-off 28` now clears E28 in
all 16 variants of the test image: `КУСЛСВ` stays 0, ПРИК4 reads nothing, and
`ШКЗЛ` keeps its assembled value (page 034 open).

Result: the zones of МОТТ (0627), КЗ1 (0670), ХЛАМ, ПРИК7 and ЭК2 change,
0676 is zeroed; no label moved (`МАСПР7` is new in МОТТ); `tools/check.sh`
passes; the job's printout is unchanged apart from times.

**Remote-disk error tracing removed from МОТТ.** ЭК7 («ПРОГРАММА ДЛЯ
ТРАССИРОВКИ ОШИБОК УДАЛ. НМД(НМЛ). ДКС К-71», block АВМЛ) chose a controller
into `гтмдл7` and read back `шмлк71`/`шврк71`, which МОТТ filled. Since ЭК7 was
removed nothing read them, but `опргд1` still logged controller 2 (the
initial `гтмдл7`) on every ДИСКИ readiness pass.
- `опргд1`: the compare-and-store is gone; it is now `пб нпр3` + reserve, so
  ДИСКИ's loop (`нпр3 цикл нпр2(М13)` / `пб (М10)`) is unchanged.
- `врк71` block («БЛОК "АВМЛ"», with `вр7ря1/2`, `КВР`…`КВР2`; unreferenced
  even in the baseline) and the cells `гтмдл7`, `шмлк71`, `шврк71` → reserves.
- The unreachable, unreferenced word `мднап2` (after `пб ОСВМД`) → reserve.
- Unused imports `зневып`, `Е24П1` dropped.

The other disk sections in МОТТ (`ДДИП`, `ДКП`, `ДКО`, `ЗАН`, `опргд2`, `освл`,
`номлин` for ДИСКИ; `опрдк7` for АВМД; `чрк71`, `дик71`, `мдмл7` for ХЛАМ;
`можно7`, `избоэ7` for БОЭК1) are К-71 versions of штат code with live callers
(decision B).

Result: only zone 0627 (МОТТ) changes; no label moved; `tools/check.sh`
passes; the job's printout is unchanged apart from times.

**ТАБЛО enabled in НОМБОБ.** After the ЗВ1 loop the штат НОМБОБ runs the АС
code and then the panel code `АС76`: show `ТАБЛО` on the panel (`увв '147'`;
SIMH treats it as an idle hint, then as `'177'`) and keep its bits 48-16
(remembered in `пртаб`) for one pass before clearing them. `∧К71` assembled
out both, together with `пртаб`.
- `пртаб` and `АС76`…`ВЫ1` (now ending in `ПБ ВЫ`) sit in the reserve after
  `пб НЕЗАВИ` (`пам 11` → 1 + 6 words + `пам 4`).
- After `ЦИКЛ (М15)` the К-71 text has `пб АС76` where it had the filler
  `уиа 1027` (М0 target, a no-op), which the штат text keeps before its АС
  code. The АС code itself stays under `∧К71` for phase 6.

First try: leaving the code in place moved НОМБОБ's tail by 6 words. Labels
relink, but the literal pool then ran past 011377 into Н+'1400', where
СТАТ2С (`СТАРТ '11400'`) is loaded. The overlay overwrote the constants, and
СТАТ2С was then called over and over (zone 0030 read endlessly), so the boot
hung.

Result: only zone 0426 (НОМБОБ) changes; no label moved (`ПРТАБ`, `АС76`,
`ВЫ1` are new); `tools/check.sh` passes; the job's printout is unchanged
apart from times. `sim/run.sh` now uses SIGKILL on timeout, since SIGTERM only
interrupts the current SIMH command and the script goes on.

**ДИСКИ reserves merged.** Nothing outside ДИСКИ addresses its cells by number
(searched for octal and decimal forms of 073326-075367; the near misses are
text codes, page addresses or programs with their own address space; КЗ1's
`ЭКВИВ`s `'25047'`…`'33457'` are the ГОСТ texts «КЗ», «ОЗ», «ЧЛ», «ЧБ», «ЧП»,
«ЧД», «УЗ» for the end-of-task line). So the six 2-word КОНВОЙ reserves
(`нпр1`, after `прмд`, `тмдоб7`, `enq3`, `qc`, after `отклин`) are gone, with
their now empty `∧К71` blocks. `qc` now labels the next instruction
(`СЧ ШЗМД`), and `тмдоб7`, which only fell through, is replaced by its target
`освкм1` (ДИСКИ `пв`, ХЛАМ `пб`, ВХОД/ВНЕШ).

ДИСКИ's size must stay the same: КИТ, ГРУППА, ДИСКИ and РЕЗАРХ have no load
address of their own in `rvs.src` and are packed one after another behind
КАЧКА (072000, zones 0625-0626). A shorter ДИСКИ moved РЕЗАРХ's code 2 words
below its `СТАРТ '75370'`, and the job ended with «ДАЙ ТРАКТЫ». The 12 words
are therefore one reserve at the end of ДИСКИ's code (`пам 12`, before the
constant pool).

Result: 215 ДИСКИ labels move by up to 12 words (the ДИСКИ entries in
`labels.base` are rebased); its importers are relinked; РЕЗАРХ and ДИСКИ's
constants stay put; `tools/check.sh` passes; the job's printout is unchanged
apart from times. `tools/check.sh` now also fails if the job's printout lacks
«КОНЕЦ ЗАДАЧИ» (it only waited for the printout before).

## Remaining work

1. Phase 6: МОТТ-100 and the ШКАС setup in ГЕНС1.
2. Decision B pass over the other К-71 features, starting with the штат
   ТЕРМАС vectors.
