import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDiophantineEquationsLemmaCanonicalLaneLean.LinearDiophantineEquation

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure SolutionExistencePackage (E : LinearDiophantineEquation) where
  integerSolution : Prop
  boundedSolution : Prop
  parametricFamily : Prop
  integerSolutionClosed : integerSolution
  boundedSolutionClosed : boundedSolution
  parametricFamilyClosed : parametricFamily

def SolutionExistenceClosed (E : LinearDiophantineEquation) (S : SolutionExistencePackage E) : Prop :=
  S.integerSolution ∧ S.boundedSolution ∧ S.parametricFamily

theorem solution_existence_closed_from_evidence (E : LinearDiophantineEquation) (S : SolutionExistencePackage E) :
    SolutionExistenceClosed E S := by
  exact And.intro S.integerSolutionClosed (And.intro S.boundedSolutionClosed S.parametricFamilyClosed)

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
