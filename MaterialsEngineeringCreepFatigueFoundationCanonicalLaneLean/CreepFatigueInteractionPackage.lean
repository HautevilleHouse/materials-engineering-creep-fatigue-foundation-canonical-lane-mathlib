import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CreepFatigueInteractionPackage where
  creepDamage : Prop
  fatigueDamage : Prop
  interactionRule : Prop
  dwellTimeEffect : Prop
  frequencyEffect : Prop

structure CreepFatigueInteractionEvidence (C : CreepFatigueInteractionPackage) where
  creepDamageClosed : C.creepDamage
  fatigueDamageClosed : C.fatigueDamage
  interactionRuleClosed : C.interactionRule
  dwellTimeEffectClosed : C.dwellTimeEffect
  frequencyEffectClosed : C.frequencyEffect

def CreepFatigueInteractionClosed (C : CreepFatigueInteractionPackage) : Prop :=
  C.creepDamage ∧ C.fatigueDamage ∧ C.interactionRule ∧ C.dwellTimeEffect ∧ C.frequencyEffect

theorem creep_fatigue_interaction_closed_from_evidence (C : CreepFatigueInteractionPackage) (E : CreepFatigueInteractionEvidence C) : CreepFatigueInteractionClosed C := by
  exact And.intro E.creepDamageClosed (And.intro E.fatigueDamageClosed (And.intro E.interactionRuleClosed (And.intro E.dwellTimeEffectClosed E.frequencyEffectClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse
