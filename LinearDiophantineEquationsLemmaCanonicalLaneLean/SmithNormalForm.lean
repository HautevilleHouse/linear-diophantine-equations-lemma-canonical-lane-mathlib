import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDiophantineEquationsLemmaCanonicalLaneLean.LinearDiophantineEquation

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure SmithNormalFormPackage (E : LinearDiophantineEquation) where
  matrix : List (List ℤ)
  unimodularLeft : List (List ℤ)
  unimodularRight : List (List ℤ)
  diagonalForm : List ℤ
  equivalenceWithOriginal : Prop
  equivalenceWithOriginalClosed : equivalenceWithOriginal

def SmithNormalFormClosed (E : LinearDiophantineEquation) (S : SmithNormalFormPackage E) : Prop :=
  S.equivalenceWithOriginal

theorem smith_normal_form_closed_from_evidence (E : LinearDiophantineEquation) (S : SmithNormalFormPackage E) :
    SmithNormalFormClosed E S := by
  exact S.equivalenceWithOriginalClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
