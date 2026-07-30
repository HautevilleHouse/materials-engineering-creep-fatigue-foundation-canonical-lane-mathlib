import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CreepMechanismsPackage where
  diffusionCreep : Prop
  dislocationCreep : Prop
  powerLawGoverning : Prop
  stressExponentDefined : Prop
  activationEnergyKnown : Prop

structure CreepMechanismsEvidence (C : CreepMechanismsPackage) where
  diffusionCreepClosed : C.diffusionCreep
  dislocationCreepClosed : C.dislocationCreep
  powerLawGoverningClosed : C.powerLawGoverning
  stressExponentDefinedClosed : C.stressExponentDefined
  activationEnergyKnownClosed : C.activationEnergyKnown

def CreepMechanismsClosed (C : CreepMechanismsPackage) : Prop :=
  C.diffusionCreep ∧ C.dislocationCreep ∧ C.powerLawGoverning ∧ C.stressExponentDefined ∧ C.activationEnergyKnown

theorem creep_mechanisms_closed_from_evidence (C : CreepMechanismsPackage)
    (E : CreepMechanismsEvidence C) : CreepMechanismsClosed C := by
  exact And.intro E.diffusionCreepClosed (And.intro E.dislocationCreepClosed
    (And.intro E.powerLawGoverningClosed (And.intro E.stressExponentDefinedClosed E.activationEnergyKnownClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse