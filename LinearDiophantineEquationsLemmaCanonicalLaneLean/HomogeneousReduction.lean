import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDiophantineEquationsLemmaCanonicalLaneLean.LinearDiophantineSolver

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure HomogeneousReductionPackage {S : LinearDiophantineSolverPackage} where
  homogeneousSystem : LinearDiophantineSystem
  particularSolution : ℤ × ℤ
  reductionValid : Prop
  solutionsParameterized : Prop

def HomogeneousReductionPackageClosed {S : LinearDiophantineSolverPackage}
    (P : HomogeneousReductionPackage S) : Prop :=
  P.reductionValid ∧ P.solutionsParameterized

structure HomogeneousReductionEvidence {S : LinearDiophantineSolverPackage}
    (P : HomogeneousReductionPackage S) where
  reductionValidClosed : P.reductionValid
  solutionsParameterizedClosed : P.solutionsParameterized

theorem homogeneous_reduction_closed_from_evidence {S : LinearDiophantineSolverPackage}
    (P : HomogeneousReductionPackage S) (E : HomogeneousReductionEvidence P) :
    HomogeneousReductionPackageClosed P := by
  exact And.intro E.reductionValidClosed E.solutionsParameterizedClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse