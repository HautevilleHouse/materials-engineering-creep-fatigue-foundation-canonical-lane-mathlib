import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CoffinMansonLawPackage where
  fatigueDuctilityExponent : Prop
  fatigueDuctilityCoefficient : Prop
  plasticStrainAmplitude : Prop
  reversalsToFailure : Prop
  meanStressCorrection : Prop

structure CoffinMansonLawEvidence (C : CoffinMansonLawPackage) where
  fatigueDuctilityExponentClosed : C.fatigueDuctilityExponent
  fatigueDuctilityCoefficientClosed : C.fatigueDuctilityCoefficient
  plasticStrainAmplitudeClosed : C.plasticStrainAmplitude
  reversalsToFailureClosed : C.reversalsToFailure
  meanStressCorrectionClosed : C.meanStressCorrection

def CoffinMansonLawClosed (C : CoffinMansonLawPackage) : Prop :=
  C.fatigueDuctilityExponent ∧ C.fatigueDuctilityCoefficient ∧
  C.plasticStrainAmplitude ∧ C.reversalsToFailure ∧ C.meanStressCorrection

theorem coffin_manson_law_closed_from_evidence (C : CoffinMansonLawPackage) (E : CoffinMansonLawEvidence C) :
    CoffinMansonLawClosed C := by
  exact And.intro E.fatigueDuctilityExponentClosed
    (And.intro E.fatigueDuctilityCoefficientClosed
      (And.intro E.plasticStrainAmplitudeClosed
        (And.intro E.reversalsToFailureClosed E.meanStressCorrectionClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse