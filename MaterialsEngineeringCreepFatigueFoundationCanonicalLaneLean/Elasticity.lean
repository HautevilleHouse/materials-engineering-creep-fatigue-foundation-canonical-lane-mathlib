import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure ElasticModuli where
  youngModulus : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ

definition stressTensor : Type := Matrix (Fin 3) (Fin 3) ℝ
definition strainTensor : Type := Matrix (Fin 3) (Fin 3) ℝ

theorem hookes_law (σ : stressTensor) (ε : strainTensor) (C : Matrix (Fin 3) (Fin 3) (Matrix (Fin 3) (Fin 3) ℝ)) : 
  σ = C • ε := by
  exact And.intro trivial trivial

structure ElasticityPackage where
  moduli : ElasticModuli
  stressStrainRelation : Prop
  isotropyCondition : Prop

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse