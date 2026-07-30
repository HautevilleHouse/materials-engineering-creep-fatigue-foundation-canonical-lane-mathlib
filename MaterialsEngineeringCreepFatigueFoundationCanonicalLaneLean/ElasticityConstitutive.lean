import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure ElasticityConstitutivePackage where
  stressStrainRelation : Prop
  elasticStiffnessTensor : Prop
  hookesLawHomogeneous : Prop
  isotropyCompatibility : Prop
  strainEnergyDensity : Prop

structure ElasticityConstitutiveEvidence (E : ElasticityConstitutivePackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  elasticStiffnessTensorClosed : E.elasticStiffnessTensor
  hookesLawHomogeneousClosed : E.hookesLawHomogeneous
  isotropyCompatibilityClosed : E.isotropyCompatibility
  strainEnergyDensityClosed : E.strainEnergyDensity

def ElasticityConstitutiveClosed (E : ElasticityConstitutivePackage) : Prop :=
  E.stressStrainRelation ∧ E.elasticStiffnessTensor ∧ E.hookesLawHomogeneous ∧ E.isotropyCompatibility ∧ E.strainEnergyDensity

theorem elasticity_constitutive_closed_from_evidence (E : ElasticityConstitutivePackage)
    (Ev : ElasticityConstitutiveEvidence E) : ElasticityConstitutiveClosed E := by
  exact And.intro Ev.stressStrainRelationClosed (And.intro Ev.elasticStiffnessTensorClosed
    (And.intro Ev.hookesLawHomogeneousClosed (And.intro Ev.isotropyCompatibilityClosed Ev.strainEnergyDensityClosed)))

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse