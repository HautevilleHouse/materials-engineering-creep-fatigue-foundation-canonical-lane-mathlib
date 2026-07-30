import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure MinerRulePackage where
  linearDamageAccumulation : Prop
  loadSpectrumInput : Prop
  damageSummation : Prop
  variableAmplitude : Prop
  meanStressSensitivity : Prop

structure MinerRuleEvidence (M : MinerRulePackage) where
  linearDamageAccumulationClosed : M.linearDamageAccumulation
  loadSpectrumInputClosed : M.loadSpectrumInput
  damageSummationClosed : M.damageSummation
  variableAmplitudeClosed : M.variableAmplitude
  meanStressSensitivityClosed : M.meanStressSensitivity

def MinerRuleClosed (M : MinerRulePackage) : Prop :=
  M.linearDamageAccumulation ∧ M.loadSpectrumInput ∧
  M.damageSummation ∧ M.variableAmplitude ∧ M.meanStressSensitivity

theorem miner_rule_closed_from_evidence (M : MinerRulePackage) (E : MinerRuleEvidence M) :
    MinerRuleClosed M := by
  exact And.intro E.linearDamageAccumulationClosed
    (And.intro E.loadSpectrumInputClosed
      (And.intro E.damageSummationClosed
        (And.intro E.variableAmplitudeClosed E.meanStressSensitivityClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse