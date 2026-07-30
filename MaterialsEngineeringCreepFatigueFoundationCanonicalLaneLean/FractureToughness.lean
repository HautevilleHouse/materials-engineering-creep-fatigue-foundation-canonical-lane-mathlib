import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure FractureToughnessPackage where
  criticalStressIntensity : Prop
  jIntegralDefined : Prop
  crackTipPlasticZone : Prop
  fractureModeSeparation : Prop
  temperatureDependence : Prop

structure FractureToughnessEvidence (F : FractureToughnessPackage) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  jIntegralDefinedClosed : F.jIntegralDefined
  crackTipPlasticZoneClosed : F.crackTipPlasticZone
  fractureModeSeparationClosed : F.fractureModeSeparation
  temperatureDependenceClosed : F.temperatureDependence

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.criticalStressIntensity ∧ F.jIntegralDefined ∧ F.crackTipPlasticZone ∧ F.fractureModeSeparation ∧ F.temperatureDependence

theorem fracture_toughness_closed_from_evidence (F : FractureToughnessPackage)
    (E : FractureToughnessEvidence F) : FractureToughnessClosed F := by
  exact And.intro E.criticalStressIntensityClosed (And.intro E.jIntegralDefinedClosed
    (And.intro E.crackTipPlasticZoneClosed (And.intro E.fractureModeSeparationClosed E.temperatureDependenceClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse