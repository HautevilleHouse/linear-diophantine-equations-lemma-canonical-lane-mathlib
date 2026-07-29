import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure DioEquation where
  coefficients : List ℤ
  unknowns : ℕ
  solutionExists : Prop

structure DioAdmittedObject where
  equation : DioEquation
  solutionBound : ℕ
  hasSolution : Prop
  conclusion : hasSolution

structure DioEndgameState where
  object : DioAdmittedObject

def DioWitnessClosed (O : DioAdmittedObject) : Prop :=
  O.hasSolution

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse
