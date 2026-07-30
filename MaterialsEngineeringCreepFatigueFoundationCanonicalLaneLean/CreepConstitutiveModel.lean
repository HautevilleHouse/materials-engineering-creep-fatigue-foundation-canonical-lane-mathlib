import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CreepConstitutiveModel where
  creepLaw : Type u
  temperatureDependence : Prop
  stressExponent : Prop
  primaryCreep : Prop
  secondaryCreep : Prop
  tertiaryCreep : Prop
  ruptureTime : Prop

structure CreepConstitutiveEvidence (C : CreepConstitutiveModel) where
  temperatureDependenceClosed : C.temperatureDependence
  stressExponentClosed : C.stressExponent
  primaryCreepClosed : C.primaryCreep
  secondaryCreepClosed : C.secondaryCreep
  tertiaryCreepClosed : C.tertiaryCreep
  ruptureTimeClosed : C.ruptureTime

def CreepConstitutiveClosed (C : CreepConstitutiveModel) : Prop :=
  C.temperatureDependence ∧ C.stressExponent ∧ C.primaryCreep ∧ C.secondaryCreep ∧ C.tertiaryCreep ∧ C.ruptureTime

theorem creep_constitutive_closed_from_evidence (C : CreepConstitutiveModel) (E : CreepConstitutiveEvidence C) :
    CreepConstitutiveClosed C := by
  exact And.intro E.temperatureDependenceClosed (And.intro E.stressExponentClosed (And.intro E.primaryCreepClosed (And.intro E.secondaryCreepClosed (And.intro E.tertiaryCreepClosed E.ruptureTimeClosed))))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse