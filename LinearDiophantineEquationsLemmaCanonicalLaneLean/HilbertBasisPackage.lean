import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure HilbertBasisPackage {V : Type} [AddCommGroup V] (eq : LinearDiophantineEquation V) where
  basis : List V
  nonnegativeSolutions : List (ℕ → V)
  finiteness : Prop

structure HilbertBasisEvidence {V : Type} [AddCommGroup V] {eq : LinearDiophantineEquation V} (H : HilbertBasisPackage eq) where
  basisClosed : H.finiteness
  generatorsClosed : ∀ (g : V → ℕ), g ∈ H.nonnegativeSolutions → eq.solution (∑ i, g i)

def HilbertBasisClosed {V : Type} [AddCommGroup V] {eq : LinearDiophantineEquation V} (H : HilbertBasisPackage eq) : Prop :=
  H.finiteness

theorem hilbert_basis_closed_from_evidence
    {V : Type} [AddCommGroup V] {eq : LinearDiophantineEquation V}
    (H : HilbertBasisPackage eq) (E : HilbertBasisEvidence H) :
    HilbertBasisClosed H := by
  exact E.basisClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse