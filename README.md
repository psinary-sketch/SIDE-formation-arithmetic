# SIDE-formation-arithmetic v0.1

SIDE-formation-arithmetic compiles natural-number arithmetic over a formation tuple. Statements at ef0fcf1:

    theorem classA_total : totalCount classA = 81 (SIDEFormationArithmetic/Classes.lean :43)
    theorem wall_squared_when_n1_eq_n3 (t : FormationTuple) (h : t.n1 = t.n3) : totalCount t = wall t * wall t (SIDEFormationArithmetic/Core.lean :57)

"Traces 2 and 3" of the matter-as-remainder spiral are comments and the papers' words: no statement names a trace or a spiral.

## What it establishes

### Core (`SIDEFormationArithmetic/Core.lean`)

```
structure FormationTuple
def totalCount (t) := t.n2 ^ (t.n1 + t.n3)
def primitiveCount (t) := t.n1 ^ t.n3
def remainderCount (t) := totalCount t − primitiveCount t
def wall (t) := t.n2 ^ t.n1

theorem wall_squared_when_n1_eq_n3
```

## Apply

```powershell
# Place repository at D:\SIDE-formation-arithmetic
cd D:\SIDE-formation-arithmetic
git init
git add .
lake build         # verify before commit
git commit -m "v0.1 — Radial trace kernel for matter-as-remainder Traces 2 and 3"
git tag v0.1
```

Expected: 3 jobs (Core + Classes + root).

## What's still open in the matter-as-remainder spiral

- **Trace 1**: Product formula as identity (Mathlib-dependent)
- **Trace 4**: (ℤ/2)³ embedding of remainder (link from "remainder = 77" to the orbit structure) — partially in SIDE-substrate-cluster v0.4
- **Trace 6**: 1/12 ↔ Ω_b/12 bridge (needs Rat arithmetic or Mathlib)

Future radial-trace kernels can close these.
