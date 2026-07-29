import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure LinearDiophantineEquation where
  a : ℤ
  b : ℤ
  c : ℤ

def solved (eq : LinearDiophantineEquation) : Prop :=
  ∃ (x : ℤ) (y : ℤ), eq.a * x + eq.b * y = eq.c

structure LinearDiophantineSystem where
  equations : List LinearDiophantineEquation
  consistent : Prop

def systemSolved (sys : LinearDiophantineSystem) : Prop :=
  ∀ eq ∈ sys.equations, solved eq

structure LinearDiophantineSolverPackage where
  system : LinearDiophantineSystem
  algorithmPresent : Prop
  solutionExists : Prop
  algorithmTerminates : Prop

def LinearDiophantineSolverPackageClosed (P : LinearDiophantineSolverPackage) : Prop :=
  P.algorithmPresent ∧ P.solutionExists ∧ P.algorithmTerminates

structure LinearDiophantineSolverEvidence (P : LinearDiophantineSolverPackage) where
  algorithmPresentClosed : P.algorithmPresent
  solutionExistsClosed : P.solutionExists
  algorithmTerminatesClosed : P.algorithmTerminates

theorem linear_diophantine_solver_closed_from_evidence (P : LinearDiophantineSolverPackage)
    (E : LinearDiophantineSolverEvidence P) : LinearDiophantineSolverPackageClosed P := by
  exact And.intro E.algorithmPresentClosed
    (And.intro E.solutionExistsClosed E.algorithmTerminatesClosed)

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse