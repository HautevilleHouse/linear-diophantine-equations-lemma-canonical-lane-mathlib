import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure SmithNormalFormPackage where
  matrix : Matrix ℕ ℕ ℤ
  P : Matrix ℕ ℕ ℤ
  Q : Matrix ℕ ℕ ℤ
  D : Matrix ℕ ℕ ℤ
  invertibleP : IsUnit (det P)
  invertibleQ : IsUnit (det Q)
  diagonal : D = P * matrix * Q
  divisibility : ∀ i, D i i ∣ D (i+1) (i+1)
  invariantFactors : List ℤ

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  diagonalClosed : S.diagonal
  divisibilityClosed : S.divisibility

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.diagonal ∧ S.divisibility

theorem smith_normal_form_closed_from_evidence (S : SmithNormalFormPackage) (E : SmithNormalFormEvidence S) :
    SmithNormalFormClosed S := by
  exact And.intro E.diagonalClosed E.divisibilityClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse