import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure IntegerConeDecompositionPackage where
  coneDimension : ℕ
  generationSet : List ℕ
  coneGenerated : Prop

structure IntegerConeDecompositionEvidence (C : IntegerConeDecompositionPackage) where
  coneGeneratedClosed : C.coneGenerated

def IntegerConeDecompositionClosed (C : IntegerConeDecompositionPackage) : Prop :=
  C.coneGenerated

theorem integer_cone_decomposition_closed_from_evidence (C : IntegerConeDecompositionPackage) (E : IntegerConeDecompositionEvidence C) :
    IntegerConeDecompositionClosed C := by
  exact E.coneGeneratedClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse