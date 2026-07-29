import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure DiophantineEquation where
  coefficients : List ℤ
  constant : ℤ
  variables : ℕ

structure DiophantineAdmittedObject where
  equation : DiophantineEquation
  integerSolution : Prop
  solutionExists : integerSolution
  conclusion : solutionExists

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.solutionExists

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse