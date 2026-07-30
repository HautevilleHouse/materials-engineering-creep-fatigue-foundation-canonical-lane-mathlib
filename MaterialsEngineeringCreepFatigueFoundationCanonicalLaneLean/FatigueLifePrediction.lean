import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure FatigueLifePredictionPackage where
  stressCycle : Type u
  snCurve : Prop
  fatigueLimit : Prop
  cumulativeDamage : Prop
  meanStressCorrection : Prop
  multiaxialFatigue : Prop

structure FatigueLifePredictionEvidence (F : FatigueLifePredictionPackage) where
  snCurveClosed : F.snCurve
  fatigueLimitClosed : F.fatigueLimit
  cumulativeDamageClosed : F.cumulativeDamage
  meanStressCorrectionClosed : F.meanStressCorrection
  multiaxialFatigueClosed : F.multiaxialFatigue

def FatigueLifePredictionClosed (F : FatigueLifePredictionPackage) : Prop :=
  F.snCurve ∧ F.fatigueLimit ∧ F.cumulativeDamage ∧ F.meanStressCorrection ∧ F.multiaxialFatigue

theorem fatigue_life_prediction_closed_from_evidence (F : FatigueLifePredictionPackage) (E : FatigueLifePredictionEvidence F) :
    FatigueLifePredictionClosed F := by
  exact And.intro E.snCurveClosed (And.intro E.fatigueLimitClosed (And.intro E.cumulativeDamageClosed (And.intro E.meanStressCorrectionClosed E.multiaxialFatigueClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse