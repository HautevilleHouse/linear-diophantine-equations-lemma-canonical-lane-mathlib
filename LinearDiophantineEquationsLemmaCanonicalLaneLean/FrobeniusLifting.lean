import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure FrobeniusLiftingPackage where
  baseSolution : ℕ
  liftingProperty : Prop

structure FrobeniusLiftingEvidence (F : FrobeniusLiftingPackage) where
  liftingPropertyClosed : F.liftingProperty

def FrobeniusLiftingClosed (F : FrobeniusLiftingPackage) : Prop :=
  F.liftingProperty

theorem frobenius_lifting_closed_from_evidence (F : FrobeniusLiftingPackage) (E : FrobeniusLiftingEvidence F) :
    FrobeniusLiftingClosed F := by
  exact E.liftingPropertyClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse