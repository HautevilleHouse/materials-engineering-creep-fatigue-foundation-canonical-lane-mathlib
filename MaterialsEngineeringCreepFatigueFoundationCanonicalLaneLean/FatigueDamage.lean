import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure FatigueDamagePackage where
  cyclicStressStrain : Prop
  snCurveDefined : Prop
  palmgrenMinerRule : Prop
  crackInitiationModel : Prop
  crackPropagationModel : Prop

structure FatigueDamageEvidence (F : FatigueDamagePackage) where
  cyclicStressStrainClosed : F.cyclicStressStrain
  snCurveDefinedClosed : F.snCurveDefined
  palmgrenMinerRuleClosed : F.palmgrenMinerRule
  crackInitiationModelClosed : F.crackInitiationModel
  crackPropagationModelClosed : F.crackPropagationModel

def FatigueDamageClosed (F : FatigueDamagePackage) : Prop :=
  F.cyclicStressStrain ∧ F.snCurveDefined ∧ F.palmgrenMinerRule ∧ F.crackInitiationModel ∧ F.crackPropagationModel

theorem fatigue_damage_closed_from_evidence (F : FatigueDamagePackage)
    (E : FatigueDamageEvidence F) : FatigueDamageClosed F := by
  exact And.intro E.cyclicStressStrainClosed (And.intro E.snCurveDefinedClosed
    (And.intro E.palmgrenMinerRuleClosed (And.intro E.crackInitiationModelClosed E.crackPropagationModelClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse