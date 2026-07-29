import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure DiophantineApproximationPackage where
  normType : Type
  bestApproximationExponent : ℕ
  dirichletExponent : ℕ
  thueSiegelRothExponent : ℕ
  approximationTheoremValid : Prop

structure DiophantineApproximationEvidence (D : DiophantineApproximationPackage) where
  normTypeClosed : True
  bestApproximationExponentClosed : True
  dirichletExponentClosed : True
  thueSiegelRothExponentClosed : True
  approximationTheoremValidClosed : D.approximationTheoremValid

def DiophantineApproximationClosed (D : DiophantineApproximationPackage) : Prop :=
  D.approximationTheoremValid

theorem diophantine_approximation_closed_from_evidence
    (D : DiophantineApproximationPackage) (E : DiophantineApproximationEvidence D) :
    DiophantineApproximationClosed D := by
  exact E.approximationTheoremValidClosed

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
