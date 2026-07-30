import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModuli : Type w
  youngsModulus : Prop
  poissonsRatio : Prop
  stressStrainEligible : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngsModulusClosed : E.youngsModulus
  poissonsRatioClosed : E.poissonsRatio
  stressStrainEligibleClosed : E.stressStrainEligible

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngsModulus ∧ E.poissonsRatio ∧ E.stressStrainEligible

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.youngsModulusClosed (And.intro Ev.poissonsRatioClosed Ev.stressStrainEligibleClosed)

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse