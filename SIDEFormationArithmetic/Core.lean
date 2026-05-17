/-
  SIDEFormationArithmetic.Core

  Defines the FormationTuple structure and the arithmetic operations
  used in MATTER_AS_ARITHMETIC §II:
    totalCount(t) = n₂^(n₁+n₃)
    primitiveCount(t) = n₁^n₃
    remainderCount(t) = totalCount(t) − primitiveCount(t)
    wall(t) = n₂^n₁

  Proves the Wall² identity: when n₁ = n₃, totalCount = wall × wall.

  This radial trace kernel covers Traces 2 and 3 of the matter-as-remainder
  spiral (SPIRAL_MAP §3.2):
    Trace 2: formation tuple → 81 substrate configurations
    Trace 3: 81 = wall² → primitive / remainder split

  Vanilla Lean 4, no Mathlib, no sorry, no axioms.
-/

namespace SIDEFormationArithmetic

/-- A formation tuple as in MATTER_AS_ARITHMETIC §I:
    n₁ = primitive count, n₂ = transformation count,
    n₃ = output count, n₄ = interface count. -/
structure FormationTuple where
  n1 : Nat
  n2 : Nat
  n3 : Nat
  n4 : Nat
  deriving DecidableEq, Repr

/-- Total substrate configurations: n₂^(n₁+n₃).
    For Class A (2,3,2,0): 3^4 = 81. -/
def totalCount (t : FormationTuple) : Nat := t.n2 ^ (t.n1 + t.n3)

/-- Primitive-accessible configurations: n₁^n₃.
    For Class A: 2^2 = 4. -/
def primitiveCount (t : FormationTuple) : Nat := t.n1 ^ t.n3

/-- Remainder configurations (place-requiring): total − primitive.
    For Class A: 81 − 4 = 77. -/
def remainderCount (t : FormationTuple) : Nat := totalCount t - primitiveCount t

/-- The wall is n₂^n₁.  For Class A: 3^2 = 9 (matching Størmer's
    consecutive {2,3}-smooth wall). -/
def wall (t : FormationTuple) : Nat := t.n2 ^ t.n1

/-- THE WALL² IDENTITY (Trace 3 core).

    When n₁ = n₃, the total formation count equals wall².
    Algebraic consequence: n₂^(n₁+n₃) = n₂^(2n₁) = (n₂^n₁)² when n₁ = n₃.

    For Class A and Class D (both have n₁ = n₃), this gives perfect-square
    totals (81 and 16).  Classes B and C have n₁ ≠ n₃ and their totals
    (32 and 243) are not perfect squares. -/
theorem wall_squared_when_n1_eq_n3 (t : FormationTuple) (h : t.n1 = t.n3) :
    totalCount t = wall t * wall t := by
  show t.n2 ^ (t.n1 + t.n3) = t.n2 ^ t.n1 * t.n2 ^ t.n1
  have hh : t.n1 + t.n3 = t.n1 + t.n1 := by rw [h]
  rw [hh, Nat.pow_add]

end SIDEFormationArithmetic
