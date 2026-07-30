import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure SwingModelPackage where
  timeHardeningCreep : Prop
  strainRangeFatigue : Prop
  elasticCoreCreep : Prop
  elasticCoreFatigue : Prop
  stressRedistribution : Prop

structure SwingModelEvidence (S : SwingModelPackage) where
  timeHardeningCreepClosed : S.timeHardeningCreep
  strainRangeFatigueClosed : S.strainRangeFatigue
  elasticCoreCreepClosed : S.elasticCoreCreep
  elasticCoreFatigueClosed : S.elasticCoreFatigue
  stressRedistributionClosed : S.stressRedistribution

def SwingModelClosed (S : SwingModelPackage) : Prop :=
  S.timeHardeningCreep ∧ S.strainRangeFatigue ∧ S.elasticCoreCreep ∧ S.elasticCoreFatigue ∧ S.stressRedistribution

theorem swing_model_closed_from_evidence (S : SwingModelPackage) (E : SwingModelEvidence S) :
    SwingModelClosed S := by
  exact And.intro E.timeHardeningCreepClosed
    (And.intro E.strainRangeFatigueClosed
      (And.intro E.elasticCoreCreepClosed
        (And.intro E.elasticCoreFatigueClosed E.stressRedistributionClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse