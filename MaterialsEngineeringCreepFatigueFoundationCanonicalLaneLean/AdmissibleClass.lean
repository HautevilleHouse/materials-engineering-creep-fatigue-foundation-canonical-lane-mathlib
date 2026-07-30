import HautevilleHouse.MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CreepFatigueAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CreepFatigueWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse