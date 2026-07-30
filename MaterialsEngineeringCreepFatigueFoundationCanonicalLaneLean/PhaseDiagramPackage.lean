import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  constituents : List String
  temperatureRange : ℝ × ℝ
  pressureRange : ℝ × ℝ
  phases : List String
  equilibriumLines : Type u

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.constituents ≠ [] ∧ P.temperatureRange.1 < P.temperatureRange.2 ∧ P.pressureRange.1 < P.pressureRange.2 ∧ P.phases ≠ []

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (h : PhaseDiagramClosed P) : PhaseDiagramClosed P := h

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse