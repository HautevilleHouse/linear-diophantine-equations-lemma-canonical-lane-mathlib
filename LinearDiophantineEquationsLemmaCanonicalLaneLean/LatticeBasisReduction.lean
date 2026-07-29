import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure LatticeBasisReductionPackage where
  latticeRank : ℕ
  initialBasis : Type
  reducedBasis : Type
  sizeReduction : Prop
  orthogonalization : Prop
  lovaszCondition : Prop

structure LatticeBasisReductionEvidence (L : LatticeBasisReductionPackage) where
  sizeReductionClosed : L.sizeReduction
  orthogonalizationClosed : L.orthogonalization
  lovaszConditionClosed : L.lovaszCondition

def LatticeBasisReductionClosed (L : LatticeBasisReductionPackage) : Prop :=
  L.sizeReduction ∧ L.orthogonalization ∧ L.lovaszCondition

theorem lattice_basis_reduction_closed_from_evidence
    (L : LatticeBasisReductionPackage) (E : LatticeBasisReductionEvidence L) :
    LatticeBasisReductionClosed L := by
  exact And.intro E.sizeReductionClosed (And.intro E.orthogonalizationClosed E.lovaszConditionClosed)

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
