import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure HilbertTenthPackage where
  polynomialDegree : ℕ
  numberOfVariables : ℕ
  solutionExistsDecidable : Prop

structure HilbertTenthEvidence (H : HilbertTenthPackage) where
  solutionExistsDecidableClosed : H.solutionExistsDecidable

def HilbertTenthClosed (H : HilbertTenthPackage) : Prop :=
  H.solutionExistsDecidable

theorem hilbert_tenth_closed_from_evidence (H : HilbertTenthPackage)
    (E : HilbertTenthEvidence H) : HilbertTenthClosed H := by
  exact E.solutionExistsDecidableClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse