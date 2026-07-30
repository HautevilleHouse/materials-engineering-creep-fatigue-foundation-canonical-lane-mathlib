import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CreepStrainRatePackage where
  stressExponent : ℝ
  activationEnergy : ℝ
  temperature : ℝ
  gasConstant : ℝ
  preExponentialFactor : ℝ
  strainRate : ℝ

def CreepStrainRateClosed (C : CreepStrainRatePackage) : Prop :=
  C.stressExponent > 0 ∧ C.activationEnergy > 0 ∧ C.temperature > 0 ∧ C.gasConstant > 0 ∧ C.preExponentialFactor > 0 ∧ C.strainRate > 0

theorem creep_strain_rate_closed_from_evidence (C : CreepStrainRatePackage) (h : CreepStrainRateClosed C) : CreepStrainRateClosed C := h

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse