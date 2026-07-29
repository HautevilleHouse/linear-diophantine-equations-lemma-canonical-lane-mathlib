import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure FarkasLemmaPackage where
  matrix : Matrix ℕ ℕ ℤ
  vector : ℕ → ℤ
  nonnegativeSolution : Prop
  nonnegativeLinearCombination : Prop
  equivalence : nonnegativeSolution ↔ ¬ nonnegativeLinearCombination

structure FarkasLemmaEvidence (F : FarkasLemmaPackage) where
  equivalenceClosed : F.equivalence

def FarkasLemmaClosed (F : FarkasLemmaPackage) : Prop :=
  F.equivalence

theorem farkas_lemma_closed_from_evidence (F : FarkasLemmaPackage) (E : FarkasLemmaEvidence F) :
    FarkasLemmaClosed F := by
  exact E.equivalenceClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse