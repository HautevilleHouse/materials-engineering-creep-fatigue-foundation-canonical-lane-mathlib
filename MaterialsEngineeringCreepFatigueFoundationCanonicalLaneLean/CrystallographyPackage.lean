import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type
  latticeParameters : Prop
  symmetryGroup : Prop
  unitCellVolume : Prop
  millerIndices : Type

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  latticeParametersClosed : C.latticeParameters
  symmetryGroupClosed : C.symmetryGroup
  unitCellVolumeClosed : C.unitCellVolume

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.latticeParameters ∧ C.symmetryGroup ∧ C.unitCellVolume

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.latticeParametersClosed (And.intro E.symmetryGroupClosed E.unitCellVolumeClosed))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse
