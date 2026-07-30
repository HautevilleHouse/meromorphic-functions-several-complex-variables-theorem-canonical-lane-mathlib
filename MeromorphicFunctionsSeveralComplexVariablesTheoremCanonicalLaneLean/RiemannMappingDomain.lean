import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.ComplexStructure

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure RiemannMappingDomain {D : Type u} [TopologicalSpace D] (C : ComplexStructure D) where
  simplyConnected : Prop
  biholomorphicToDisc : Prop
  existenceProof : Prop

structure RiemannMappingEvidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : RiemannMappingDomain C) where
  simplyConnectedClosed : domain.simplyConnected
  biholomorphicToDiscClosed : domain.biholomorphicToDisc
  existenceProofClosed : domain.existenceProof

def RiemannMappingClosed {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : RiemannMappingDomain C) : Prop :=
  domain.simplyConnected ∧ domain.biholomorphicToDisc ∧ domain.existenceProof

theorem riemann_mapping_closed_from_evidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : RiemannMappingDomain C) (E : RiemannMappingEvidence domain) : RiemannMappingClosed domain := by
  exact And.intro E.simplyConnectedClosed (And.intro E.biholomorphicToDiscClosed E.existenceProofClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
