import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessMatrix : Matrix (Fin 6) (Fin 6) ℝ
  complianceMatrix : Matrix (Fin 6) (Fin 6) ℝ
  youngModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ
  isIsotropic : Prop
  isAnisotropic : Prop

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.youngModulus > 0 ∧ E.poissonRatio > -1 ∧ E.poissonRatio < 0.5 ∧ E.shearModulus > 0 ∧ E.bulkModulus > 0 ∧ (E.isIsotropic ∨ E.isAnisotropic)

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (h : ElasticityTensorClosed E) : ElasticityTensorClosed E := h

end MaterialsEngineeringCreepFatigueFoundationCanonicalLaneLean
end HautevilleHouse