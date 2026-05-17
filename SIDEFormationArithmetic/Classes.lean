/-
  SIDEFormationArithmetic.Classes

  The four substrate classes from MATTER_AS_ARITHMETIC v0.4 §I.3, with
  their specific arithmetic theorems.

  Class A (Arithmetic, ℤ via {2,3}):     (2, 3, 2, 0)  → Ω = 4/81
  Class B (Gravitational, diffeomorphism):(3, 2, 2, 0)  → Ω = 9/32
  Class C (Gauge, SU(N)):                 (3, 3, 2, 0)  → Ω = 1/27
  Class D (Information, σ-algebras):      (2, 2, 2, 0)  → Ω = 1/4

  Planck 2018 measures Ω_b = 0.04930 ± 0.00066, matching Class A at 0.13σ
  and excluding the others at 18.6σ to 351σ.  This kernel verifies the
  arithmetic forward predictions; empirical comparison is corpus-side.

  Vanilla Lean 4, no Mathlib, no sorry, no axioms.
-/

import SIDEFormationArithmetic.Core

namespace SIDEFormationArithmetic

-- ============================================================================
-- The four substrate classes
-- ============================================================================

/-- Class A — Arithmetic substrate (ℤ via {2,3}). -/
def classA : FormationTuple := ⟨2, 3, 2, 0⟩

/-- Class B — Gravitational substrate (spacetime / diffeomorphism). -/
def classB : FormationTuple := ⟨3, 2, 2, 0⟩

/-- Class C — Gauge substrate (SU(N)). -/
def classC : FormationTuple := ⟨3, 3, 2, 0⟩

/-- Class D — Information substrate (σ-algebras). -/
def classD : FormationTuple := ⟨2, 2, 2, 0⟩

-- ============================================================================
-- Class A (Arithmetic) — the cosmologically selected substrate
-- ============================================================================

theorem classA_total : totalCount classA = 81 := by decide
theorem classA_primitive : primitiveCount classA = 4 := by decide
theorem classA_remainder : remainderCount classA = 77 := by decide
theorem classA_wall : wall classA = 9 := by decide
theorem classA_wall_squared_value : wall classA * wall classA = 81 := by decide

/-- Cosmic flatness for Class A: primitive + remainder = total.
    Algebraic identity at the substrate level. -/
theorem classA_flatness :
    primitiveCount classA + remainderCount classA = totalCount classA := by decide

/-- Class A satisfies the Wall² identity (n₁ = n₃ = 2). -/
theorem classA_wall_squared_identity :
    totalCount classA = wall classA * wall classA :=
  wall_squared_when_n1_eq_n3 classA (by decide)

/-- Ω_b = primitive / total as a pair.  For Class A: (4, 81). -/
theorem classA_omega_pair :
    (primitiveCount classA, totalCount classA) = (4, 81) := by decide

-- ============================================================================
-- Class B (Gravitational)
-- ============================================================================

theorem classB_total : totalCount classB = 32 := by decide
theorem classB_primitive : primitiveCount classB = 9 := by decide
theorem classB_remainder : remainderCount classB = 23 := by decide
theorem classB_omega_pair :
    (primitiveCount classB, totalCount classB) = (9, 32) := by decide

/-- Class B does NOT satisfy the Wall² identity: n₁ = 3 ≠ 2 = n₃. -/
theorem classB_n1_ne_n3 : classB.n1 ≠ classB.n3 := by decide

-- ============================================================================
-- Class C (Gauge)
-- ============================================================================

theorem classC_total : totalCount classC = 243 := by decide
theorem classC_primitive : primitiveCount classC = 9 := by decide
theorem classC_remainder : remainderCount classC = 234 := by decide
theorem classC_omega_pair :
    (primitiveCount classC, totalCount classC) = (9, 243) := by decide

/-- Class C does NOT satisfy the Wall² identity: n₁ = 3 ≠ 2 = n₃. -/
theorem classC_n1_ne_n3 : classC.n1 ≠ classC.n3 := by decide

-- ============================================================================
-- Class D (Information)
-- ============================================================================

theorem classD_total : totalCount classD = 16 := by decide
theorem classD_primitive : primitiveCount classD = 4 := by decide
theorem classD_remainder : remainderCount classD = 12 := by decide
theorem classD_wall : wall classD = 4 := by decide
theorem classD_omega_pair :
    (primitiveCount classD, totalCount classD) = (4, 16) := by decide

/-- Class D also satisfies the Wall² identity (n₁ = n₃ = 2). -/
theorem classD_wall_squared_identity :
    totalCount classD = wall classD * wall classD :=
  wall_squared_when_n1_eq_n3 classD (by decide)

-- ============================================================================
-- Class A vs others — the four predictions
-- ============================================================================

/-- Summary theorem: the four (primitive, total) pairs across substrate classes. -/
theorem four_class_predictions :
    (primitiveCount classA, totalCount classA) = (4, 81)  ∧
    (primitiveCount classB, totalCount classB) = (9, 32)  ∧
    (primitiveCount classC, totalCount classC) = (9, 243) ∧
    (primitiveCount classD, totalCount classD) = (4, 16)  := by decide

/-- Class A is distinguished from Class B by the (primitive, total) pair. -/
theorem classA_distinct_from_classB :
    (primitiveCount classA, totalCount classA) ≠
    (primitiveCount classB, totalCount classB) := by decide

theorem classA_distinct_from_classC :
    (primitiveCount classA, totalCount classA) ≠
    (primitiveCount classC, totalCount classC) := by decide

theorem classA_distinct_from_classD :
    (primitiveCount classA, totalCount classA) ≠
    (primitiveCount classD, totalCount classD) := by decide

end SIDEFormationArithmetic
