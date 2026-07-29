import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDiophantineEquationsLemmaCanonicalLaneLean.SolutionExistence

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure HilbertBasisPackage {E : LinearDiophantineEquation} {S : SolutionExistencePackage E} where
  coneGenerators : List (List ℤ)
  finiteGeneration : Prop
  minimalGenerators : List (List ℤ)
  finiteGenerationClosed : finiteGeneration
  minimalGeneratorsClosed : minimalGenerators

def HilbertBasisClosed {E : LinearDiophantineEquation} {S : SolutionExistencePackage E}
    (H : HilbertBasisPackage E S) : Prop :=
  H.finiteGeneration ∧ H.minimalGenerators

theorem hilbert_basis_closed_from_evidence {E : LinearDiophantineEquation} {S : SolutionExistencePackage E}
    (H : HilbertBasisPackage E S) : HilbertBasisClosed H := by
  exact And.intro H.finiteGenerationClosed H.minimalGeneratorsClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
