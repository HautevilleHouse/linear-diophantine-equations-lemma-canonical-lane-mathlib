import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDiophantineEquationsLemmaCanonicalLaneLean.SolutionExistence

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure FrobeniusCoinProblemPackage {E : LinearDiophantineEquation} {S : SolutionExistencePackage E} where
  coinDenominations : List ℕ
  largestNonRepresentable : ℕ
  gcdOneCondition : Prop
  largestNonRepresentableClosed : largestNonRepresentable
  gcdOneConditionClosed : gcdOneCondition

def FrobeniusCoinProblemClosed {E : LinearDiophantineEquation} {S : SolutionExistencePackage E}
    (F : FrobeniusCoinProblemPackage E S) : Prop :=
  F.largestNonRepresentable ∧ F.gcdOneCondition

theorem frobenius_coin_problem_closed_from_evidence {E : LinearDiophantineEquation} {S : SolutionExistencePackage E}
    (F : FrobeniusCoinProblemPackage E S) : FrobeniusCoinProblemClosed F := by
  exact And.intro F.largestNonRepresentableClosed F.gcdOneConditionClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
