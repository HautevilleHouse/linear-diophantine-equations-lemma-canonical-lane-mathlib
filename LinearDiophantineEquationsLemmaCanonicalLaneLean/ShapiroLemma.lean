import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure ShapiroLemmaPackage where
  field : Type
  characteristicZero : Prop
  linearFormCount : ℕ
  linearForms : List (List ℤ)
  shapiroCondition : Prop

structure ShapiroLemmaEvidence (S : ShapiroLemmaPackage) where
  fieldClosed : True
  characteristicZeroClosed : S.characteristicZero
  shapiroConditionClosed : S.shapiroCondition

def ShapiroLemmaClosed (S : ShapiroLemmaPackage) : Prop :=
  S.characteristicZero ∧ S.shapiroCondition

theorem shapiro_lemma_closed_from_evidence
    (S : ShapiroLemmaPackage) (E : ShapiroLemmaEvidence S) :
    ShapiroLemmaClosed S := by
  exact And.intro E.characteristicZeroClosed E.shapiroConditionClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
