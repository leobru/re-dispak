# Overall Design of the Dispak Operating System

This directory is a reverse-engineering project of **Диспак (Dispak, "ДИСПетчер ПАКетной обработки")** — the standard ОС-Диспак operating system for the БЭСМ-6, written in БЭМШ assembler, broken into the same set of overlay modules that the original system was distributed in.

Below is the design as it falls out of the sources.

## 1. Build / verification flow (the project, not the OS)

```
modlist.src  ── mkloc.pl ──▶  modloc.txt        (zone layout on disk 2222)
*.be file    ── asm.pl   ──▶  *.lst + zones on disk 2222
                                     │
rvs.src ──── rvs.pl ────▶ rvs.log    │
                                     ▼
                     verify.pl  cmp zone-by-zone against
                     disk 2053 (the "gold" original Dispak)
```

- `modlist.src` lists every module in Cyrillic with its length in 1024-word **zones** (1, 2, 3, 4 or 7).
- `mkloc.pl` translates that list into `modloc.txt`, assigning each module a starting zone on the system disk image (cylinder/zone numbers 0000…0302 octal).
- `asm.pl` wraps a `.be` source in the БЭМШ batch deck (`ВВД$$$ … КВЧ$$$ ТРН$$$ ЧТКОМП420070 … ЗОНМОД 43dest len … КНЦ$$$`) and feeds it to the original `dispak` emulator running the 1970-era БЭМШ assembler from disk 420070; the binary is written into disk image 2222.
- `rvs.src` is the loader recipe (it patches `zzzz` placeholders with actual zone numbers from `modloc.txt`); `rvs.pl` runs that recipe under `dispak` to assemble the final system image.
- `verify.pl` then dumps each zone with `besmtool` and runs `cmp` between the rebuilt disk 2222 (`silver`) and the recovered original disk 2053 (`gold`). The whole point of this repo is to drive that diff to zero — i.e. to recover legible БЭМШ source code that reassembles, byte-for-byte, to the original Dispak binary.

`extern.pl`, `merge.pl`, `dubasm.pl`, `flatten.pl`, `disbesm6.cc`, `decode.c`, `showbrz.c`, etc. are the disassembly / cross-reference helpers that produce the per-module `*.sym` files, fix up `ВНЕШ` references and turn raw zone dumps (`G*-L*` files) back into source.

## 2. Map of the disk image (i.e. of the OS itself)

`modloc.txt` is essentially the link map. Each line is `name start-zone length`, e.g.:

```
дисп70 0061 07     ← 7-zone resident kernel
взу    0034 04
мотт   0137 04
диски  0055 04
дмлмб  0070 04
есмл   0077 04
терм   0237 04
хлам   0247 04
боэк1  0017 04
... single-zone overlays follow (167–270 oct.) ...
устсня 0301 01 00001 ← SVS-only
проарх 0302 01 00001 ← SVS-only
```

The 4- and 7-zone slots are the **resident kernel / device drivers**; the dozens of 1–2-zone slots are **overlays** (нерезиденты) that share one in-memory zone and are paged in on demand by ВИСП (see §3.5).

## 3. Module roles

The names are essentially identical to those in published Dispak documentation. Together they implement an interrupt + extracode based supervisor on a 48-bit БЭСМ-6 with 32 main-interrupt levels (ГРП) and 64 extracodes (Э0-Э77).

### 3.1 The kernel: `disp70.be` (7 zones, ДИСП70)

This is the core of the supervisor and is almost entirely in `disp70.be` (~2580 lines).

- **GRP / interrupt vector.** The first words after the constant pool are the entry points `START`, `внешпр`, `внупр`, `ОБВНПР` etc. (lines ~194–198, 864, 1198), with the 32-deep tail-table at the very end (`grp24`, ГРП23 — divide-by-zero, ГРП22 — AU overflow, ГРП21 — КЧ, "запрос", "ТТ старт", "имитация", "своб 3-6" channels, "гот напр. 3-6", "СИ ВУ0/1", "СИ ФС0/1", "ноль А0/А1", "СИ А0/А1" — exactly the БЭСМ-6 main-interrupt set). `БМВ` is the standard "back to user mode" return.
- **Extracode dispatch.** The "Э" table at line 236+ (`Э зп СМ; пб Э1`, `пб ВЕТКА`, `пб ЭК57`, `пб ТУМБР`, `пб АЦПУ`, `пб ГОША`, …, `пб ЭКП`, `пб ЭКВВД`, `пб ЭККВМ`, `пб ЭКМУЛЬ`) is the main extracode jump table. Many entries delegate to the right module (`ВЗУ`, `МОТТ`, `БОЭК1`, ...).
- **`ТУС`/`ТУСП` table** (lines ~486 and 562-627) — the "Таблица Управления Состоянием" with one entry per task and a parallel table of overlay handler addresses keyed by `Е48-Е2` bit; this is the per-task control block array, sized for ~16 jobs. The bit-comments are the names of the overlays (`Е47-ПЕЧАТЬ`, `Е45-МОНТЕР`, `Е44-ДИСКИ`, `Е43-ВИСП`, `Е42-ДМЛМБ(МБ)`, `Е39-ДМЛМБ(МЛ)`, `Е38-КАЧКА`, `Е37-ТРУБКА`, `Е36-ПЛАН`, `Е35-ПРОЦЕС`, `Е34-ПУСКАЧ`, `Е33-АВРАСП`, `Е32-ЭКВВОД`, `Е31-РЕСУРС`, `Е29-ВВОД(В1К)`, `Е28-СПЭ66`, `Е27-РЕЗ.ЭК-КОДЫ`, `Е26-НОМБОБ`, `Е25-ПРИКАЗ`, `Е24-НЕРОТ`, `Е22-ПЛ`, `Е21-Э60`, `Е20-РПИПЛ`, `Е18-ЕСПИ80`, `Е16-УПРЯЧЬ`, `Е11-БОП`, `Е10-ЭТК71`, `Е9-ОТЛАДЧИК`, `Е8-Э67`, `Е7-КЧ`, `Е6-КЗ`, `Е4-СБОЙВУ`). This is exactly the per-level overlay assignment.
- **Math run-time.** sin/cos/atan/asin/log/exp coefficient tables and code (lines ~63-107, 2270-2455) are bundled into the resident kernel — they are reached via extracodes Э18, Э26, Э33, Э35, Э52 (`u5031`, `u5056`, `Э35` etc.).
- **Globals.** Most of the 800+ `пам`/`конд` declarations at the top of the file are the global variables of the OS: `ШГ` / `ШГП` (running-task / pending-task masks), `ШКМЛ`/`ШКМД`/`ШКМБ` (tape/drum/disk request bitmaps), `ОЧКУС`/`ОЧКУСД`/`ШОЧМГ`/`ШОЧНАП` (queues), `ТУС`/`ТУСП`, `ВРЕМЯ`, `ГОД`, `НОММБ`, `ЗАНЯТА`, `СМ`/`РК`/`РМР`/`И15…И20` (saved CPU state), `РЭ1…РЭ7` (kernel scratch), the long `ЭКВИВ` table at the bottom that defines the layout of a job's IPZ (per-task data block: `КВНЗАД`, `ПЗ`, `ЧПЗ`, `НПЗ`, `СОБЫТ`, `МАСГЛ`, `ШПЭГ`, `ЯЧК`, `ЕКА`, etc.).
- **The `ВХОД ...` / `ВНЕШ ...` blocks** at lines 2501-2585 list the public symbols ДИСП70 exposes (about 350 names) and the modules it calls back into (БОЭК1, ВИСП, ВЗУ, ЗОН676, МОТТ, ДИСКИ, ДМЛМБ, КАЧКА, КИТ, ПЕЧАТЬ, РЕЗАРХ, ХЛАМ, СОСТАВ). That cross-reference graph is the most concise statement of how the kernel relates to the rest of the OS.

### 3.2 Device / I/O drivers (4-zone residents)

| Module | Role |
|---|---|
| `vzu.be` (ВЗУ — Внешнее Запоминающее Устройство) | Universal physical I/O dispatcher. `ФИЗОБМ`/`ФИЗИЧ`/`ФИЗУР`/`ФИЗО`/`ФИЗЗП` are entry points for "physical exchange"; it parses the I/O word, decides drum vs. disk vs. tape vs. ОЗУ paging (`ВХМЛ`, `ДЛЯМБ`, `ВХМЛЕ`, `ЗПУК`), and dispatches to ДМЛМБ / ДИСКИ / ЕСМЛ. Also hosts extracodes `ЭКП`, `ЭКС75`, `ЗОВИ`, `ПРХЭ67`, `ГОША`, `АЦПУ`, `ТУМБР`, `ЭККВМ`. |
| `mott.be` (МОТТ — operator console / "монтёр") | Terminal protocol on the operator console; processes incoming character lines, ШКОПР/ШКТАС/ШБУДИЛ flags, runs the "watchdog" wake-ups (`ШКОРАБ`). |
| `diski.be` (ДИСКИ) | All MD (disk) housekeeping: the per-direction tables `ЕNQМДС`, `МДНЕИС`, `ЗАНКМД`, `ОЖОСВ`, the DAY / availability bitmaps, DAR/DAR-map, and the queues `ОЧКУСД`. |
| `dmlmb.be` (ДМЛМБ — драм + МБ) | Drum and MB ("буферный" disk) channel driver, called via Е42/Е39. Provides `СВОБМБ`, `ОБЩМГ`, `БУДИЛ`, `ПРЛСЧБ`, `ПРОБМ`, `A64770`. |
| `esml.be` (ЕСМЛ) | ЕС-compatible magnetic tape driver. |
| `term.be` (ТЕРМ) | Local terminal (alphanumeric console) driver. The `ККОДПЛ` table at the top is the БЭСМ-6 character-shift translation table for РУС/ЛАТ/ЦИФ keyboard layers. |
| `khlam.be` ("ХЛАМ" — literally "leftovers") | Catch-all for many medium-sized routines that did not fit anywhere else; e.g. `ИПЗ54`/`ИПЗ55` per-channel control blocks, lots of `ВЫЗОВ` stubs that do `СЧИ М16; НТЖ ЕС5017; ПЕ <addr>` (the typical demand-load pattern). |
| `boek1.be` (БОЭК1) | Low-level extracode helpers (`Ф4`, `АВАРИЯ`, `ИМИТАЦ`, `АВДРУГ`, `ВЫЗОВ`, `ПРОВЛ`, `ПЛВОЗУ`, `ПЕЭКС`, `КИПР`, `ЭКВЛ`) — the routines on the kernel side of every extracode. |

### 3.3 Scheduling, processes, resources

| Module | Role |
|---|---|
| `visp.be` (ВИСП — "вызов исполнителей" / non-resident loader) | The overlay manager. Walks `ШКИВ` (request bitmap per non-resident), copies the requested overlay into ОЗУ via `ФИЗОБМ`, and updates `ШКСВН`, `ШКНП`, `ШКМБ`, `ШГ`, `ШГП`. The `ВШГ`/`ИЗШГ`/`ВШГП`/`ИЗШГП` entry points are the standard "raise/clear ready bit" primitives used by the rest of the system. |
| `proces.be` (ПРОЦЕС) | Implements extracode-family Э53 (process / branch operations: Э5312, Э5313, Э5314, Э5315, Э5316, Э5317, Э5318, Э5320 etc.). I.e. fork/spawn/branch within a job's process tree. |
| `puskach.be` (ПУСКАЧ — the "starter") | Job launcher: reads the input-disk catalog (`ИНФКАТ`), unpacks the next job, sets up its IPZ, then asks СКОР1/СКОР2 to actually start it. |
| `plan.be` / `plan2.be` | The planner — picks the next runnable job. |
| `avrasp.be` (АВРАСП) | "Автоматическое распределение" — automatic resource distribution (Е33). |
| `resurs.be` (РЕСУРС) | Resource-request extracodes (Е31): tape/disk/drum allocation, magnetic-tape inventory, etc. |
| `kanal.be` (КАНАЛ) | "Channel" / event API for the running task: `МАСГЛ` (event mask), `ШПЭГ` (pending events), declare/clear/await events, similar to a signal mask. |
| `kachka.be` (КАЧКА) | Memory swapping / paging of inactive jobs ("укачать"/"раскачать" — to put to sleep / wake up). |
| `clock.be` (ЧАСЫ) | Real-time clock driver: reads hardware clock channels 4152/4153, updates `ВРЕМЯ`/`ГОД`, drives the `ТАЙМЕР` timeouts. |

### 3.4 Operator command interpreter

`prikaz.be` is the dispatcher for operator commands (the "приказы"). It defines the macro `М УВВ` for the "stop" command and dispatches to each command file:

`prik1.be … prik8.be` — individual command groups (e.g. ПРИК1 = system status commands, etc.; the `prikN.sym` files list the command symbols implemented in each).

`bonbot.be` (БОНБОТ — the operator-console "robot") is a higher-level command sequencer / batch operator helper.

### 3.5 Extracode handlers Э60-Э77

There is one source per extracode set:

`e60.be` `e60d.be` `e64.be` `e71tk.be` `ek2.be` `ek3.be` `ek4.be` `ek5.be` `ek6.be` `ek7.be` `ekst.be` `ekvvod.be` `ekgdr.be` — each is a leaf overlay that handles one or a few extracodes (e.g. `ЭКВВД` = extracode "ввода" — read; `ЭКП` = print; `Э71тк` = ЭТК71 / interactive line editor; `Э60`/`Э60Д` — file open/close; etc.).

### 3.6 Communications / remote terminals

| Module | Role |
|---|---|
| `janus.be` (ЯНУС — "Janus") | The СДО (Система Дистанционного Обслуживания) — Dispak's remote login / time-sharing front-end. The header line `<<  СДО  Я Н У С  * ВЕР. ОТ 26 ЯНВ 83 >>` and the `Я>` prompt are exactly what users saw on a remote terminal in 1983. |
| `svyaz.be` (СВЯЗЬ) | Inter-machine link to a coupled БЭСМ-6 (the symbol `АДРЭ77` = "the other CPU's address space" gives it away — `мод АДРЭ77` is exactly the "use the partner's memory" mode bit). |
| `consul.be` | "Consul" hardcopy printer driver. |
| `term.be` / `espi80.be` / `espl.be` / `e71tk.be` | Terminal drivers (local console, ЕС-7920 over ЕС ПИ-80 protocol, etc.). |
| `benson.be` | Benson plotter driver. |
| `rpipl.be` | Remote line printer / plotter. |
| `pibesm.be` / `plbesm.be` | Inter-machine "ПИ-БЭСМ" / "ПЛ-БЭСМ" links. |
| `dnepr.be` | Driver for the "Днепр" peripheral (an old Soviet machine). |
| `e64.be` | Connection to ЕС ЭВМ (IBM/360 clone) via channel-64. |

### 3.7 Bookkeeping & misc

| Module | Role |
|---|---|
| `gens.be`/`gens1.be`/`gens2.be` | "Генс" — system-generation tables (mode/equipment configuration). `readme.gens` is a hand-written cheat sheet for which Е-bit each application class uses. |
| `pechat.be` (ПЕЧАТЬ) | Spool printer; entry points `ПЕЧАТЬ`, `СИАЦПУ`, `НОЛЬ`. |
| `sostav.be` (СОСТАВ — "composition") | System composition/inventory. |
| `rezarkh.be` (РЕЗАРХ — "резервный архив") | Archive/restore extracodes (entry `ВХ220`, `ИПЗРЭ`). |
| `proarx.be` / `устсня` | Overlays only present on the SVS variant — see §4. |
| `gnus.be`, `kit.be`, `kch.be`, `kz.be`/`kz1.be` | Smaller helper overlays (group/queue/check-sum housekeeping). |
| `nrkod.be` (НРКОД) | Encoding tables. |
| `e60d.be` (read-only file in the tree) | "Е60Д" — file system close/discard branch. |
| `zone0414.be`, `zone0676.be`, `zone0677.be`, `zone0744.be`, `zone05*.be` | Code that lives at fixed disk zones (typically jump tables, parameter tables, or hand-placed entry stubs) and so is checked into the tree under its zone number rather than a name. |

The `*.sym` companions next to most `*.be` files are local symbol tables (entry points exported by that module), used by `extern.pl` to regenerate the long `ВНЕШ` lists at the bottom of each module.

## 4. Two flavours: ОС Диспак vs. СВС

You can see in the comments and in `modloc.txt` that the project tracks two slightly different builds:

- The classic **ОС Диспак** ends at zone 0277 (`янус`).
- The **СВС** ("Система Виртуальных Систем" — the late, virtualised variant) adds two extra modules at fixed locations: `устсня` at 0301 and `проарх` at 0302, plus a few `'(СВС: ...)'` comments inside other modules (e.g. `КИТ ВНЕШ ИПЗ56,ИПЗ57,ДОП` and the `на СВС ЗП СМ` / `на СВС ПБ ЭКМУЛЬ` notes inside the Э-table of `disp70.be`).

`TODO` lists two dozen modules (`авост.bemsh`, `адап.bemsh`, `аумод1/2`, `вызсвс`, `сервис`, `сеть`, `табкод`, `тестэк`, `прервс`, `печсвс`, `рздсвс` …) that are СВС-specific and have not yet been recovered.

## 5. Programming model that the sources expose

From the БЭМШ idioms used everywhere in these files you can read off the run-time model the OS targets:

- **48-bit word, 15 index registers (М1…М17).** By convention `М7` always holds the module's own base (every module starts with `УПОТР имя_модуля(М7)` so all `смещение(М7)` references are PC-relative within the module), `М15` is the link / return register, `М16`/`М17` are scratch, and `М1`/`М2` are usually job-number / NER-number.
- **Two CPU modes**, with the kernel using the privileged (`РЕГ '237'`, `СЧРЖ '37'`, `УВВ '4034'`) instructions to look at the РЭ4 (interrupt cause) and to switch ОЗУ pages.
- **48 / 64 extracodes Э0-Э77.** Dispatched out of the table at the top of `disp70.be`. Each extracode is either resident (math, simple I/O) or routed to a non-resident overlay through ВИСП.
- **32 main-interrupt levels (ГРП).** A single big jump table, present at the end of `disp70.be`, plus per-level handlers spread throughout (`ГРП15`, `ГРП21`, `ГРП23`, `ГРП24`).
- **Up to 30-odd jobs ("задач") in core simultaneously**, each with its own ИПЗ (Информация о Загрузке Задачи / per-task control block — laid out by the `ЭКВИВ` table in `disp70.be`), a process tree (Э53 family), a per-job event mask (`МАСГЛ`/`ШПЭГ` from КАНАЛ), and a current overlay slot in the Е-bit map (`ТУС`/`ТУСП`).
- **Disk image zones of 1024×48-bit = 6144 bytes** (you can see the `1536`/`6144` constants in `verify.pl`); the ОС lives in zones 0017-0302 of system pack 2222 and the rest of the pack is the file system.
- **Loadable on demand:** any module declared with `НС` ("нерезидент") in `rvs.src` shares its slot with siblings; ВИСП is the demand-loader; `ШКИВ`, `ШКНП`, `ШКСВМ`, `ШКОГ`, `ШКОД` are the "slot busy / requested / in-memory" bitmaps.

## 6. One-line summary of the design

> Dispak is an **interrupt-driven, extracode-based supervisor** for the БЭСМ-6: a small permanently-resident kernel (`disp70` + four-zone device drivers `вэу/мотт/диски/дмлмб/есмл/терм/хлам/боэк1`) that owns the 32 ГРП levels and the 64 Э-codes, vectors each Э-code into either a resident routine or, via a demand loader (`висп`), into one of about 80 single-zone non-resident overlays. Around that kernel sit (a) a job pipeline (`пускач` → `план/план2` → `аврасп` → `ресурс` → `процес`), (b) an operator-command interpreter (`приказ` + `прик1…прик8` + `бонбот`), (c) a math/library run-time embedded in `disp70`, (d) a family of per-extracode handlers (`э60`, `э60д`, `э64`, `э71тк`, `эк2…эк7`, `экввод`, `экст`, `экгдр`), and (e) a peripherals / communications fan-out (`терм`, `янус`, `связь`, `еспи80`, `еспл`, `консул`, `бенсон`, `рпипл`, `днепр`, `пибэсм`, `плбэсм`).

Everything in this directory — the Perl scripts, the `*.sym` files, `modlist.src`, `modloc.txt`, `rvs.src`, the dozens of `*.be` files, and the `verify.pl` cmp loop against `disk 2053` — is the scaffolding to recover that supervisor in human-readable БЭМШ that reassembles bit-for-bit to the original Dispak system disk.
