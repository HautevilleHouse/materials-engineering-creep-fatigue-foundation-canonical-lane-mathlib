import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure FatigueLifePackage where
  stressAmplitude : ℝ
  meanStress : ℝ
  numberOfCycles : ℕ
  enduranceLimit : ℝ
  isHighCycle : Prop
  isLowCycle : Prop
  parisLawExponent : ℝ
  parisLawConstant : ℝ

def FatigueLifeClosed (F : FatigueLifePackage) : Prop :=
  F.stressAmplitude > 0 ∧ F.numberOfCycles > 0 ∧ F.enduranceLimit > 0 ∧ (F.isHighCycle ∨ F.isLowCycle) ∧ F.parisLawExponent > 0 ∧ F.parisLawConstant > 0

theorem fatigue_life_closed_from_evidence (F : FatigueLifePackage) (h : FatigueLifeClosed F) : FatigueLifeClosed F := h

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse