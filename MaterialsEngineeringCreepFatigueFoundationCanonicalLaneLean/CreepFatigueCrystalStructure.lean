import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Type u
  latticeVectors : Type v
  bravaisClass : Prop
  spaceGroup : Prop
  latticeAngles : Prop
  symmetryOperations : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  bravaisClassClosed : C.bravaisClass
  spaceGroupClosed : C.spaceGroup
  latticeAnglesClosed : C.latticeAngles
  symmetryOperationsClosed : C.symmetryOperations

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.bravaisClass ∧ C.spaceGroup ∧ C.latticeAngles ∧ C.symmetryOperations

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.bravaisClassClosed (And.intro E.spaceGroupClosed (And.intro E.latticeAnglesClosed E.symmetryOperationsClosed))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse