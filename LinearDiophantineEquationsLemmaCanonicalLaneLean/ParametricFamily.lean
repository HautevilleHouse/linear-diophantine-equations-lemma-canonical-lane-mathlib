import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure ParametricFamilyPackage where
  parameterType : Type
  family : parameterType → ℕ → Prop
  uniformity : Prop

structure ParametricFamilyEvidence (P : ParametricFamilyPackage) where
  uniformityClosed : P.uniformity

def ParametricFamilyClosed (P : ParametricFamilyPackage) : Prop :=
  P.uniformity

theorem parametric_family_closed_from_evidence (P : ParametricFamilyPackage) (E : ParametricFamilyEvidence P) :
    ParametricFamilyClosed P := by
  exact E.uniformityClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse