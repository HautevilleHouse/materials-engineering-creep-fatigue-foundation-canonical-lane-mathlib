import HautevilleHouse.MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CreepFatigueWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse