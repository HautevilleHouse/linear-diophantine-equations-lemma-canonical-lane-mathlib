import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

def ConstrainedLinearDiophantineEquationsLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linear_diophantine_equations_lemma_endgame (A : AdmissibleClass) :
    ConstrainedLinearDiophantineEquationsLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse