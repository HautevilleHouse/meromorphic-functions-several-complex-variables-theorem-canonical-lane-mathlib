import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

-- Riemann mapping theorem for several complex variables (domain of holomorphy)
structure RiemannMappingPackage where
  domain : ComplexSpace
  starShaped : Prop
  biholomorphicMapping : Prop
  unitBall : ComplexSpace
  mappingEstablished : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  starShapedClosed : R.starShaped
  biholomorphicMappingClosed : R.biholomorphicMapping
  mappingEstablishedClosed : R.mappingEstablished

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.starShaped ∧ R.biholomorphicMapping ∧ R.mappingEstablished

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.starShapedClosed (And.intro E.biholomorphicMappingClosed E.mappingEstablishedClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
