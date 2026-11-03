# Stochastic inventory optimisation (Algol-60)

The program in `algol.txt` solves a **multi-period stochastic inventory
problem**. It looks for the stock levels and delivery sizes that minimise the
expected cost of holding stock plus the expected penalty for running short,
over `m` planning periods. Each candidate stock level is scored by Monte Carlo
simulation, and a golden-section search picks the best one. The Russian output
labels confirm this reading: ОПТИМАЛЬНЫЙ НАЧАЛЬНЫЙ ЗАПАС (optimal initial
stock), ОПТИМАЛЬНЫЕ ПОСТАВКИ (optimal deliveries), ИЗДЕРЖКИ / ДЕФИЦИТ /
ХРАНЕНИЕ (total cost / shortage / storage).

## Notation used in the listing below

- Keywords are in **bold**.
- Ordinary identifiers are in lower case. Identifiers that are overlined in the
  original (`‾Т`, `‾N`, `‾Н`, `‾А1`, `‾G`, `‾R‾А‾N‾D`, `‾Ф`, label `‾А`) are in
  upper case: `T`, `N`, `H`, `A1`, `G`, `RAND`, `Ф`, `A`. So `t` and `T`, `h`
  and `H` are different variables.
- Cyrillic letters that look like Latin ones are written as Latin
  (`СХР` → `cxp`, `Н` → `h`, `У1` → `y1`); `Ф` has no Latin twin and stays.
- Words after `end` (`end k`, `end procedure A1`) are Algol-60 comments.
- Strings (output format codes and labels) are kept exactly as in the
  original.

## Inputs

- **cxp**: holding (storage) cost per unit of stock per unit of time.
- **T**: length of a period. The integer **t** is a separate variable, the
  period loop counter.
- **nd**: required relative accuracy of the Monte Carlo estimate.
- **ne**: tolerance for the golden-section search.
- **N, m**: number of demand items per period, and number of periods.
- **h[1:m,1:N]**: the demands in each period.
- **c[1:N]**: penalty per unit of shortage, separately for each demand item.
- **b[0:m]**: upper limits on stock. `b[0]` caps the initial stock. In each
  later period the stock is capped at `b[0]+…+b[t]` minus the demand so far,
  so `b[t]` is most likely the most that can be delivered in period `t`.

## Building blocks

- **RAND** is a multiplicative congruential random number generator:
  y := 3125·y mod 2²⁶, starting from 1943, returning y/2²⁶, a number in [0,1).
- **A1(x, s, f)** estimates the expected cost of period `s` when it starts with
  stock `x`. Each simulation run:
  - shuffles the period's `N` demands into a random order (Fisher–Yates) and
    repeats the sequence in `perm[N+1:2N]` so it can be read cyclically.
    `l := RAND×k+.5` relies on Algol-60 rounding on assignment to an integer,
    so `l` is in `[1,k]`;
  - adds up the **holding cost** `ny`: stock left after random runs of
    consecutive demands (prefix sums in `Ф`), weighted by how long it stays on
    hand, times `cxp·T`;
  - adds up the **shortage cost** `nf`: the amount by which each demand goes
    unmet, weighted by its penalty `c[·]`.

  It keeps simulating until, after more than 10 runs,
  `i > 9·σ²/(nd·mean)²`. That is a 3σ rule: the estimate is within relative
  error `nd`. It returns the mean total cost in `f`, and the shortage part
  (`cd`) and holding part (`cx`) separately in globals.
- **G(f, a, b, ne, min, z)** is a golden-section minimiser (the 0.38/0.62
  split points). It narrows `[a,b]` until the interval is shorter than
  `2.5·ne`, then returns the minimising point `z` and the minimum `min`.

## Main flow

1. **Initial stock `x[0]`**: minimise the simulated cost of period 1 over
   `[0, b[0]]`.
2. **Each period `t = 1…m−1`**: choose the stock level `x[t]` that minimises
   the simulated period cost plus the half-period holding term `T·cxp·y/2`,
   searching over `[0, Σb − Σdemand]`. Each choice is printed.
3. **Last period**: set `x[m] := 0`, so nothing is left at the end of the
   horizon.
4. **Deliveries**: work them out from the stock balance,
   `H[t] = x[t] − x[t−1] + (demand in period t)`.
5. **Report**: re-evaluate each period's cost `mc[t]`, split into shortage
   `mcd` and holding `mcx`, then print the plan, the per-period costs and the
   three totals.

## Apparent bugs

These come from reading the code; it has not been run.

- **Wrong index in the delivery formula.** It uses `p2[i]` instead of
  `p2[t]`. `i` is left over from an earlier loop, so every delivery uses the
  same, wrong demand total.
- **Leftover loop variable in the shortage loop.** It uses `h[s, perm[k]]`.
  `k` is the control variable of a loop that has already finished, and
  Algol 60 leaves its value undefined at that point. `perm[r]` was probably
  meant.
- **Possible off-by-one between optimisation and reporting.** In step 2 the
  candidate stock is scored as the starting stock of period `t`
  (`A1(y, t, f1)`), so for `t = 1` both `x[0]` and `x[1]` are optimised
  against period 1. The report in step 5 instead uses `x[t−1]` as the
  starting stock of period `t`. One of the two indexings is probably wrong;
  `A1(y, t+1, f1)` would make them agree.
- **Inconsistent penalty index.** The two shortage terms use `c[perm[r]]` and
  `c[perm[r1]]` respectively; possibly one of them is a typo.
- `p2[m]` is never computed (the loop stops at `m−1`), so it stays 0.

The overall method (shuffled demand order, Monte Carlo cost, golden-section
search) points to an operations-research textbook program from around the
1970s.

## Program

<pre>
<b>begin</b> <b>real</b> cxp, nd, T, ne; <b>integer</b> N, m;
  input(cxp, nd, T, ne, N, m);
  <b>begin</b> <b>real</b> cd, cx, f1, p1, b1; <b>integer</b> t, i; <b>array</b> h[1:m, 1:N];
    <b>real</b> <b>array</b> b, x, H[0:m], nh, mc, mcd, mcx, p2[1:m], c[1:N];
    <b>integer</b> y1;
    input(h, c, b);
    y1 := 1943;
    b1 := b[0]; p1 := 0;
    <b>for</b> t := 1 <b>step</b> 1 <b>until</b> m <b>do</b> p2[t] := 0;
    <b>begin</b>
      <b>real</b> <b>procedure</b> RAND;
      <b>begin</b>
        y1 := 3125 × y1;
        y1 := y1 - (y1 ÷ 67108864) × 67108864;
        RAND := y1 / 67108864
      <b>end</b>;
      <b>begin</b>
        <b>procedure</b> A1(x, s, f); <b>value</b> x, s; <b>real</b> x; <b>integer</b> s;
        <b>begin</b> <b>integer</b> k, l, j, r, r1, i; <b>real</b> p, u;
          <b>real</b> nm, ny, nf; <b>integer</b> <b>array</b> perm[1:2×N]; <b>array</b> Ф[1:2×N];
          <b>real</b> ns;
          i := 1; f := nm := 0; cd := cx := 0;
       2: <b>for</b> k := 1 <b>step</b> 1 <b>until</b> N <b>do</b> perm[k] := k;
          <b>for</b> k := N <b>step</b> -1 <b>until</b> 1 <b>do</b>
          <b>begin</b>
            l := RAND × k + .5; j := perm[l]; perm[l] := perm[k]; perm[k] := j
          <b>end</b> k;
          <b>for</b> k := 1 <b>step</b> 1 <b>until</b> N <b>do</b> perm[N+k] := perm[k];
          p := x;
          <b>for</b> j := 1 <b>step</b> 1 <b>until</b> N <b>do</b> p := p - h[s, j];
          ny := x × (N + 1);
          Ф[1] := h[s, perm[1]];
          <b>for</b> j := 2 <b>step</b> 1 <b>until</b> 2×N <b>do</b> Ф[j] := Ф[j-1] + h[s, perm[j]];
          <b>for</b> r := 1 <b>step</b> 1 <b>until</b> N <b>do</b>
          <b>begin</b>
            j := RAND × N + .5;
            p := Ф[j+r] - Ф[j];
            <b>if</b> (x - p) &gt; 0 <b>then</b> ny := ny + (x - p) × (N + 1 - r)
          <b>end</b> r;
          ny := ny × cxp × T / (N + 2) / (N + 1);
          nf := 0;
          <b>for</b> r1 := 1 <b>step</b> 1 <b>until</b> N <b>do</b>
          <b>begin</b>
            <b>for</b> k := 1 <b>step</b> 1 <b>until</b> N <b>do</b> perm[k] := k;
            <b>for</b> k := N <b>step</b> -1 <b>until</b> 1 <b>do</b>
            <b>begin</b>
              l := RAND × k + .5; j := perm[l]; perm[l] := perm[k]; perm[k] := j
            <b>end</b> k;
            <b>for</b> k := 1 <b>step</b> 1 <b>until</b> N <b>do</b> perm[N+k] := perm[k];
            u := -x;
            <b>if</b> r1 &gt; 1 <b>then</b>
              <b>for</b> r := 1 <b>step</b> 1 <b>until</b> r1 - 1 <b>do</b> u := u + h[s, perm[r]];
            <b>for</b> r := 1 <b>step</b> 1 <b>until</b> N <b>do</b>
            <b>begin</b>
              u := u - h[s, perm[k]] + h[s, perm[r+r1-1]];
              <b>if</b> u &lt; 0 ∧ h[s, perm[r]] + u &gt; 0 <b>then</b>
                nf := nf + (h[s, perm[r]] + u) × (N + 2 - r1) × (N + 1 - r1) × c[perm[r]] / N;
              <b>if</b> u &gt; 0 <b>then</b>
                nf := nf + h[s, perm[r]] × (N + 2 - r1) × (N + 1 - r1) × c[perm[r1]] / N
            <b>end</b> r
          <b>end</b> r1;
          nf := nf × T / 2 / (N + 2) / (N + 1);
          f := f + ny + nf; cx := cx + ny; cd := cd + nf;
          nm := nm + (nf + ny)↑2;
          <b>if</b> i &gt; 10 <b>then</b>
          <b>begin</b>
            ns := nm/i - (f/i)↑2;
            <b>if</b> i - (9 × ns) / (nd × f/i)↑2 &gt; 0 <b>then</b> <b>go</b> <b>to</b> 1
          <b>end</b>;
          i := i + 1; <b>go</b> <b>to</b> 2;
       1: f := f/i; cd := cd/i; cx := cx/i
        <b>end</b> procedure A1;

        <b>procedure</b> G(f, a, b, ne, min, z); <b>value</b> a, b, ne; <b>real</b> a, b, ne, min, z;
          <b>real</b> <b>procedure</b> f;
        <b>begin</b> <b>real</b> x1, x2, y1, y2;
          x2 := a + 0.62 × (b - a); x1 := a + 0.38 × (b - a);
          y1 := f(x1); y2 := f(x2);
       A: <b>if</b> y2 &gt; y1 <b>then</b>
          <b>begin</b>
            b := x2; x2 := x1; y2 := y1; x1 := a + 0.38 × (b - a); y1 := f(x1)
          <b>end</b>
          <b>else</b>
          <b>begin</b>
            a := x1; x1 := x2; y1 := y2; x2 := a + 0.62 × (b - a); y2 := f(x2)
          <b>end</b>;
          <b>if</b> (b - a) ≥ 2.5 × ne <b>then</b> <b>go</b> <b>to</b> A;
          z := x1; min := y1;
        <b>end</b> procedure G;

        <b>real</b> <b>procedure</b> f2(y); <b>value</b> y; <b>real</b> y;
        <b>begin</b> <b>real</b> f1; A1(y, 1, f1); f2 := f1 <b>end</b> f2;

        G(f2, 0, b[0], ne, mc[1], x[0]);
        <b>for</b> t := 1 <b>step</b> 1 <b>until</b> m - 1 <b>do</b>
        <b>begin</b>
          <b>real</b> <b>procedure</b> f(y); <b>value</b> y; <b>real</b> y;
          <b>begin</b> <b>real</b> f1; A1(y, t, f1); f := f1 + T × cxp × y / 2 <b>end</b> procedure f;
          <b>for</b> i := 1 <b>step</b> 1 <b>until</b> N <b>do</b> p2[t] := p2[t] + h[t, i];
          p1 := p1 + p2[t];
          b1 := b1 + b[t];
          G(f, 0, b1 - p1, ne, mc[t], x[t]);
          output(‘/’, ‘Т’, ‘Х=’, ‘Е’, x, ‘Т’, ‘Т=’, ‘Е’, t);
        <b>end</b> t;
        x[m] := 0;
        output(‘/’, ‘Т’, ‘МС=’, ‘Е’, mc, ‘Т’, ‘Х*’, ‘Е’, x);
        H[0] := 0; x[m] := 0;
        <b>for</b> t := 1 <b>step</b> 1 <b>until</b> m <b>do</b> H[t] := x[t] - x[t-1] + p2[i];
        <b>for</b> t := 1 <b>step</b> 1 <b>until</b> m <b>do</b>
        <b>begin</b>
          A1(x[t-1], t, f1);
          mc[t] := f1 + T × cxp × x[t] / 2;
          mcd[t] := cd;
          mcx[t] := cx + T × cxp × x[t] / 2
        <b>end</b> t;
        output(‘/’, ‘Т’, ‘ОПТИМАЛЬНЫЙНАЧАЛЬНЫЙЗАПАС’, ‘Е’, x[0],
               ‘/’, ‘Т’, ‘ОПТИМАЛЬНЫЕПОСТАВКИ’, ‘Е’, H);
        output(‘/’, ‘Т’, ‘МС=’, ‘Е’, mc, ‘Т’, ‘МСD=’, ‘Е’, mcd, ‘Т’, ‘МСХ=’, ‘Е’, mcx);
        <b>begin</b> <b>real</b> emc, ecd, ecx;
          emc := mc[1]; ecd := mcd[1]; ecx := mcx[1];
          <b>for</b> i := 2 <b>step</b> 1 <b>until</b> m <b>do</b>
          <b>begin</b>
            emc := emc + mc[i]; ecd := ecd + mcd[i]; ecx := ecx + mcx[i]
          <b>end</b> i;
          output(‘/’, ‘Т’, ‘ИЗДЕРЖКИ=’, ‘Е’, emc, ‘15В’,
                 ‘Т’, ‘ДЕФИЦИТ=’, ‘Е’, ecd, ‘15В’,
                 ‘Т’, ‘ХРАНЕНИЕ=’, ‘Е’, ecx);
        <b>end</b>
      <b>end</b>
    <b>end</b>
  <b>end</b>
<b>end</b>
</pre>
