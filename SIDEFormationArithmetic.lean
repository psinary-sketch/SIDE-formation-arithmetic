/-
  SIDE-formation-arithmetic v0.1

  Radial trace kernel covering Traces 2 and 3 of the matter-as-remainder
  spiral (SPIRAL_MAP §3.2):
   * Trace 2: formation tuple (2, 3, 2, 0) → 81 substrate configurations
   * Trace 3: 81 = wall² → primitive 4 + remainder 77

  This is the first radial-trace kernel in the federation.  It does not
  vendor from other kernels (no peer composition); it stands on its own
  as the arithmetic verification of the formation-tuple consequences.

  Vanilla Lean 4, no Mathlib, no sorry, no axioms.
-/

import SIDEFormationArithmetic.Core
import SIDEFormationArithmetic.Classes
