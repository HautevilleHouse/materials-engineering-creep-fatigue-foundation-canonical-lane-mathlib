import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

def bridgeClosed (A : MaterialsAdmissibleClass) : Prop :=
  materialsWitnessClosed A.object

theorem bridge_from_admissible_class (A : MaterialsAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : MaterialsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MaterialsAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedMaterialsClosure (A : MaterialsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_materials_endgame (A : MaterialsAdmissibleClass) :
    ConstrainedMaterialsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse