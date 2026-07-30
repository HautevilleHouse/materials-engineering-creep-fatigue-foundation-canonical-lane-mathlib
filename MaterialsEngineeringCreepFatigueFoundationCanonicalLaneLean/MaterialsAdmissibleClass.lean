import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure MaterialsAdmittedObject where
  materialType : String
  processingHistory : String
  microstructure : String
  mechanicalProperties : List (String × ℝ)
  admissible : Prop
  conclusion : admissible
  remainderCarried : Prop

definition materialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.admissible

structure MaterialsAdmissibleClass where
  object : MaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse