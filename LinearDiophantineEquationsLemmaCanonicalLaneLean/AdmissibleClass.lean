import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsLemmaCanonicalLaneLean

structure LinearDiophantineAdmittedObject where
  equation : LinearDiophantineEquation ℤ
  solutionExists : Prop
  basisExists : Prop
  conclusion : solutionExists

structure LinearDiophantineEndgameState where
  object : LinearDiophantineAdmittedObject

end LinearDiophantineEquationsLemmaCanonicalLaneLean
end HautevilleHouse