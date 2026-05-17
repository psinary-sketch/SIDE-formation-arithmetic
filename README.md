# SIDE-formation-arithmetic v0.1

**Radial trace kernel** covering Traces 2 and 3 of the matter-as-remainder
spiral (see SPIRAL_MAP §3.2):

- **Trace 2**: formation tuple (2, 3, 2, 0) → 81 substrate configurations
- **Trace 3**: 81 = wall² → primitive 4 + remainder 77

This is the **first radial-trace kernel** in the federation.  Unlike peer
composites (which combine multiple sister kernels), this kernel stands on
its own — it converts corpus-side narrative about formation arithmetic
into kernel-verified Lean theorems.

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

### Classes (`SIDEFormationArithmetic/Classes.lean`)

Four substrate classes (A, B, C, D) with their specific arithmetic:

- **Class A** (Arithmetic, ℤ via {2,3}): tuple (2,3,2,0), total=81, primitive=4, remainder=77, wall=9, Wall² ✓
- **Class B** (Gravitational, diffeomorphism): tuple (3,2,2,0), total=32, primitive=9, remainder=23, Wall² ✗
- **Class C** (Gauge, SU(N)): tuple (3,3,2,0), total=243, primitive=9, remainder=234, Wall² ✗
- **Class D** (Information, σ-algebras): tuple (2,2,2,0), total=16, primitive=4, remainder=12, Wall² ✓

Class A and Class D both satisfy Wall² (n₁ = n₃ = 2 for both); Classes B
and C do not.

Cosmic flatness identity for Class A: `primitive + remainder = total`
(4 + 77 = 81).

The four (primitive, total) pairs are mutually distinct — the substrate
classes give different Ω predictions.

## Federation position

```
Phase 1 / Day 1 deposit
        ↓
        ... (Trace 1: Conservation of Spectra, product formula — corpus)
        ↓
ξ(s) formation tuple (2, 3, 2, 0)
        ↓ Trace 2: KERNEL-VERIFIED here (totalCount classA = 81)
81 substrate configurations
        ↓ Trace 3: KERNEL-VERIFIED here (Wall² identity, primitive/remainder)
Primitive 4 + remainder 77
        ↓
        ... (Trace 4: (ℤ/2)³ embedding → PairingObstruction — kernel-verified separately)
        ↓
        ... (Spiraling theorem — SIDE-orchestrator v0.1)
        ↓
        ... (Trace 6: 1/12 ↔ Ω_b/12 — corpus)
        ↓
Falsifiable cosmological prediction
```

After this kernel lands, Traces 2 and 3 move from corpus-side narrative
into kernel-verified theorems.  Traces 1 and 6 remain corpus-side; Trace 4
is kernel-verified separately in SIDE-substrate-cluster v0.4 PairingObstruction.

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
