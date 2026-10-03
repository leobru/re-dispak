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
- Э52 '7777' "trusted link" for АНИС-6. To be removed, see phase 5 and
  decision D.
- КОНВОЙ checkpoint tracing and remote-disk tests through the disk channel.
  Removed after phase 2 (it could only be switched on through ЭК7), see
  Progress.
- DW-21 printer on the АЦПУ channel (КОНФУС, ПЕЧАТЬ, ПРИК4). To be removed,
  see phase 4 and decision D.
- Plotter stubs `загл7а`/`загл7б` (ВЗУ, ДИСП70, ГП2, ПУСКАЧ, ТРУБКА).
- `шкэт` terminal handling (МОТТ `прсим7`, `прнол7`, `км2бк7`, called by ТЕРМ)
  and the АС/ТАБЛО blocks in НОМБОБ.
- `шкраб7` (used by ХЛАМ) and the unreferenced `G71136` block in КОНФУС.
- ТЕРМАС handlers at `обвнп3-6`/`обвнп3-4` instead of the штат ПРП 12/10
  vectors (see Progress).
- `маспр7` in ЭК2, КЗ1, ПРИК7 ("не шифр подсист. МРВ", `konfus.be:951`).
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

### Phase 4: remove DW-21 support — next

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

### Phase 5: remove Э52 '7777' — to do

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

### Phase 6: enable МОТТ-100 and fix the ШКАС setup in ГЕНС1 — to do

Terminals on the АС multiplexer (МОТТ-100; in SIMH the mux device: output
`увв '143'`, input `увв '4143'`, ПРП 7 input / ПРП 6 done, reset `увв '153'`)
only work today because SIMH patches the OS: on `увв '153'` (issued by ГЕНС1,
«ГАШЕНИЕ РПМ (ДЛЯ АС)») `besm6_cpu.c` stores `ШКАС` := E48 (line 1 is on АС)
and `АСОТ` := `0101010101010101` (line 1 in all 8 operator positions) straight
into МОТТ (077023, 076774). The OS code that should set them is gone:
- ГЕНС1: its header says the listing lost lines 398-425 and 1345-1348 («АС»)
  and 1239-1245 («ТЕРМАС»). Nothing in the build writes `ШКАС`/`АСОТ` at
  startup; only МОТТ (`ПИЛОТ`, disconnect) and БОНБОТ change `ШКАС` later.
- ГЕНС1 `ТЕРАС` (table `ТАС`, logical → physical МОТТ-100 line): the test is
  stubbed out as `счи 0` / `пб НЕТТЕР` with the comments «надо И Е48+47(М16)»
  and «надо ПО vt» (the `vt` branch below is unreachable), so all `ТАС`
  entries for lines 1-63 are 0.
- МОТТ `усвд`: after the `ДА4А` block the common code does
  `или '7777'` / `зп '7777'`, i.e. writes absolute cell 07777, where the
  МОТТ-100 text («"1" -> ШАС01») has `шас01`.
- МОТТ blocks N1 (`ВХОДАС`, `аск71`) and N2 (`вдк71`) and the small
  `ДА4А`/`ДА4Б` blocks are К-71 versions; the штат (МОТТ-100) variants are
  still in the source (N1: 32 lines штат vs 74 К-71).
- All 12 configuration variants have the АС words empty (`ЯШАС`/`ШАС128`,
  `NТАС`, `ШКТТ`, `ШКТТ2` = 0), so the configuration has to describe the АС
  lines as well (as `makeBESM2053.py` does for ТЕРМ).

Steps:
1. Recover the АС setup of ГЕНС1 (`ШКАС`, `АСОТ`, `ТАС`) from the МОТТ-100
   documentation and the surrounding code (`РУКАВА` §2.2 on ТЕРМ/АС, ВЫДИНС
   `ЯШАС`, `NТАС`, ГЕНС `ШАС128`/`NТАС`), and fix `ТЕРАС` as its comments say.
2. МОТТ: `'7777'` → `шас01`; switch N1/N2 and `ДА4А`/`ДА4Б` to the штат
   variants where they are complete (this revisits decision A); check the
   ПРП bit that `ВХОДАС` expects («8Р. ПРП») against SIMH (ПРП 7).
3. Configuration: describe at least one АС line in the test image.
Test: an АС terminal session on a mux line, with the values of `ШКАС`/`АСОТ`
after ГЕНС1 coming from the OS. The SIMH patch in `увв '153'` overwrites
them, so to prove it a SIMH build without the patch is needed (SIMH is not
changed here unless asked).

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
(МОТТ `прсим7`, `прнол7`, `км2бк7`; ТЕРМ calls them), АС/ТАБЛО blocks in
НОМБОБ, МОТТ blocks N1/N2 without the `шзпри7` reads, КОНФУС Э52 '7777',
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
(unreferenced, see phase 4), МОТТ block N1 (decision A).

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
In КОНФУС the remaining code is the Э52 '7777' block (phase 5), the DW-21
block "ПЕЧАТЬ" and `вых1к7`/`шпр4к7` (phase 4), `маспр7`, `шкраб7` and
`G71136`; the rest of the zone is reserves.

## Remaining work

1. Phase 4: DW-21 (decide `вых1к7`/`шпр4к7` and the `G71136` block first).
2. Phase 5: Э52 '7777'.
3. Phase 6: МОТТ-100 and the ШКАС setup in ГЕНС1.
4. Decision B pass over the other К-71 features, starting with the штат
   ТЕРМАС vectors.
