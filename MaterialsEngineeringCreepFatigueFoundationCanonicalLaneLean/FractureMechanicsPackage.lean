import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackGrowthLaw : Prop
  fractureToughness : Prop
  parisLaw : Prop
  thresholdStressIntensity : Prop
  creepCrackGrowth : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackGrowthLawClosed : F.crackGrowthLaw
  fractureToughnessClosed : F.fractureToughness
  parisLawClosed : F.parisLaw
  thresholdStressIntensityClosed : F.thresholdStressIntensity
  creepCrackGrowthClosed : F.creepCrackGrowth

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackGrowthLaw ∧ F.fractureToughness ∧ F.parisLaw ∧ F.thresholdStressIntensity ∧ F.creepCrackGrowth

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackGrowthLawClosed (And.intro E.fractureToughnessClosed (And.intro E.parisLawClosed (And.intro E.thresholdStressIntensityClosed E.creepCrackGrowthClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse