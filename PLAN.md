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
3. `tools/entries.sh | diff entries.base -`: no exported label moved; only the
   removed ДКС entries disappear.
4. `sim/run.sh` (or `make boot`): the OS boots, the job runs, the printout
   ends; the summary line `KADOPAM accesses: N` counts 032/0132 executions
   (logged by `set dks debug=KADOPAM`). Baseline: 2–3 reads of cell 0, from
   КОНФУС.`свядкс` polling. From phase 1 on it must be 0.
   `sim/term.sh` (or `make term`): a session on telegraph line 2 over telnet
   (script `sim/term.scr`: prompt, directive `ВРЕ`), same КАДОПАМ count.
5. One commit per step.

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
- Э52 '7777' "trusted link" for АНИС-6 (`konfus.be:20-237`, `disp70.be:257-263`).
- КОНВОЙ checkpoint tracing and remote-disk tests through the disk channel
  (`konvoy.be`, `konfus.be:238-444`, hooks in ДИСКИ, ХЛАМ, АВМД, МОТТ
  `2145-2412`).
- DW-21 printer on the АЦПУ channel (`konfus.be:527-630`, `734-754`, ПЕЧАТЬ,
  ПРИК4); already assembled out by `∧DW21 УСТВ 0` in the parts that matter.
- Plotter stubs `загл7а`/`загл7б` (ВЗУ, ДИСП70, ГП2, ПУСКАЧ, ТРУБКА).
- `маспр7` in ЭК2, КЗ1, ПРИК7 ("не шифр подсист. МРВ", `konfus.be:951`).
- МОТТ block N1 (`mott.be:133-260`, `аск71`: КРК terminal detection) and block
  N2 (`mott.be:1373-1441`, `вдк71`: modified telegraph-line I/O). They replace
  the МОТТ-100 multiplexer path (`ВХОДАС`, ПРП 8). Block N1 mentions the КРК
  equipment "с прямым доступом в память Э-60" and reads `шзпри7`, so it is
  partly ДКС; see decision A.

## Phases

### Phase 1: disconnect (small, address-preserving edits)

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

### Phase 2: remove the dead code, module by module

Leaves first, so that each step still assembles: ДМЛМБ, ПРИКАЗ, ПРИСКВ,
БОНБОТ, КЗ, ЭКВВОД, ГЕНС, ГЕНС1, НОМБОБ, ТЕРМ, ВЗУ, ДИСП70, МОТТ (block N3
and the `шзпри7` uses), КОНФУС (the ДКС blocks and cells). Use the штат
variant where there is one, otherwise delete; pad in the fixed-address
modules. ВНЕШ/ВХОД lines go together with the code.

### Phase 3: drop the modules

Remove СВЯЗЬ7, ЭКО and ЭК7 from `Makefile` and `rvs.src`. Zero their zones in the
image (0677; sector 0 of 0567; ЭК7's part of 0607) with a `mkdisk.py` option, so
that any remaining load attempt fails loudly instead of loading the old code.

## Decisions

- **A. МОТТ blocks N1/N2:** keep the К-71 versions; remove only the ДКС reads
  (`шзпри7`).
- **B. Other К-71 features:** keep for now; possibly removed in a later pass.
- **C. Zones of removed modules:** zero them.

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
