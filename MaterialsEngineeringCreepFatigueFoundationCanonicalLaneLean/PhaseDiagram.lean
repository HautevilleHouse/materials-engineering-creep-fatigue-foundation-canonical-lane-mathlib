import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundaries : Prop
  equilibriumPhases : Prop
  solubilityLimits : Prop
  coolingPathsDefined : Prop
  eutecticPeritecticReactions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  equilibriumPhasesClosed : P.equilibriumPhases
  solubilityLimitsClosed : P.solubilityLimits
  coolingPathsDefinedClosed : P.coolingPathsDefined
  eutecticPeritecticReactionsClosed : P.eutecticPeritecticReactions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.equilibriumPhases ∧ P.solubilityLimits ∧ P.coolingPathsDefined ∧ P.eutecticPeritecticReactions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.equilibriumPhasesClosed
    (And.intro E.solubilityLimitsClosed (And.intro E.coolingPathsDefinedClosed E.eutecticPeritecticReactionsClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse