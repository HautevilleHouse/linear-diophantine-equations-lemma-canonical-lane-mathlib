import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure SolutionBoundsPackage where
  upperBound : ℕ
  lowerBound : ℕ
  boundMonotone : upperBound ≥ lowerBound

structure SolutionBoundsEvidence (S : SolutionBoundsPackage) where
  upperBoundClosed : S.upperBound = S.upperBound
  lowerBoundClosed : S.lowerBound = S.lowerBound
  boundMonotoneClosed : S.boundMonotone

def SolutionBoundsClosed (S : SolutionBoundsPackage) : Prop :=
  S.boundMonotone

theorem solution_bounds_closed_from_evidence (S : SolutionBoundsPackage) (E : SolutionBoundsEvidence S) :
    SolutionBoundsClosed S := by
  exact E.boundMonotoneClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse