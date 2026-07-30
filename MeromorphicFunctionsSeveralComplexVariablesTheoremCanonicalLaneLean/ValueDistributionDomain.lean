import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.ComplexStructure

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ValueDistributionDomain {D : Type u} [TopologicalSpace D] (C : ComplexStructure D) where
  nevanlinnaTheory : Prop
  defectRelation : Prop
  secondMainTheorem : Prop
  juliaExceptionalSet : Prop

structure ValueDistributionEvidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : ValueDistributionDomain C) where
  nevanlinnaTheoryClosed : domain.nevanlinnaTheory
  defectRelationClosed : domain.defectRelation
  secondMainTheoremClosed : domain.secondMainTheorem
  juliaExceptionalSetClosed : domain.juliaExceptionalSet

def ValueDistributionClosed {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : ValueDistributionDomain C) : Prop :=
  domain.nevanlinnaTheory ∧ domain.defectRelation ∧ domain.secondMainTheorem ∧ domain.juliaExceptionalSet

theorem value_distribution_closed_from_evidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : ValueDistributionDomain C) (E : ValueDistributionEvidence domain) : ValueDistributionClosed domain := by
  exact And.intro E.nevanlinnaTheoryClosed (And.intro E.defectRelationClosed (And.intro E.secondMainTheoremClosed E.juliaExceptionalSetClosed))

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
