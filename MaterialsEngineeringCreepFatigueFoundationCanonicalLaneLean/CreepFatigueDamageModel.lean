import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CreepFatigueDamagePackage where
  totalDamage : Prop
  creepComponent : Prop
  fatigueComponent : Prop
  interactionTerm : Prop
  cyclicSofteningHardening : Prop

structure CreepFatigueDamageEvidence (D : CreepFatigueDamagePackage) where
  totalDamageClosed : D.totalDamage
  creepComponentClosed : D.creepComponent
  fatigueComponentClosed : D.fatigueComponent
  interactionTermClosed : D.interactionTerm
  cyclicSofteningHardeningClosed : D.cyclicSofteningHardening

def CreepFatigueDamageClosed (D : CreepFatigueDamagePackage) : Prop :=
  D.totalDamage ∧ D.creepComponent ∧ D.fatigueComponent ∧ D.interactionTerm ∧ D.cyclicSofteningHardening

theorem creep_fatigue_damage_closed_from_evidence (D : CreepFatigueDamagePackage) (E : CreepFatigueDamageEvidence D) :
    CreepFatigueDamageClosed D := by
  exact And.intro E.totalDamageClosed
    (And.intro E.creepComponentClosed
      (And.intro E.fatigueComponentClosed
        (And.intro E.interactionTermClosed E.cyclicSofteningHardeningClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse