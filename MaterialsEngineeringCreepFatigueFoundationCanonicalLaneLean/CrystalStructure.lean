import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  unitCellVolume : Prop
  slipSystemsDefined : Prop
  stackingFaultEnergy : Prop
  anisotropicElasticConstants : Prop

structure CrystalLatticeEvidence (G : CrystalLatticePackage) where
  unitCellVolumeClosed : G.unitCellVolume
  slipSystemsDefinedClosed : G.slipSystemsDefined
  stackingFaultEnergyClosed : G.stackingFaultEnergy
  anisotropicElasticConstantsClosed : G.anisotropicElasticConstants

def CrystalLatticeClosed (G : CrystalLatticePackage) : Prop :=
  G.unitCellVolume ∧ G.slipSystemsDefined ∧ G.stackingFaultEnergy ∧ G.anisotropicElasticConstants

theorem crystal_lattice_closed_from_evidence (G : CrystalLatticePackage)
    (E : CrystalLatticeEvidence G) : CrystalLatticeClosed G := by
  exact And.intro E.unitCellVolumeClosed (And.intro E.slipSystemsDefinedClosed
    (And.intro E.stackingFaultEnergyClosed E.anisotropicElasticConstantsClosed))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse