import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.ComplexStructure

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure AnalyticContinuationDomain {D : Type u} [TopologicalSpace D] (C : ComplexStructure D) where
  connected : Prop
  uniquenessTheorem : Prop
  continuationExists : Prop
  monodromyTheorem : Prop

structure AnalyticContinuationEvidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : AnalyticContinuationDomain C) where
  connectedClosed : domain.connected
  uniquenessTheoremClosed : domain.uniquenessTheorem
  continuationExistsClosed : domain.continuationExists
  monodromyTheoremClosed : domain.monodromyTheorem

def AnalyticContinuationClosed {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : AnalyticContinuationDomain C) : Prop :=
  domain.connected ∧ domain.uniquenessTheorem ∧ domain.continuationExists ∧ domain.monodromyTheorem

theorem analytic_continuation_closed_from_evidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : AnalyticContinuationDomain C) (E : AnalyticContinuationEvidence domain) : AnalyticContinuationClosed domain := by
  exact And.intro E.connectedClosed (And.intro E.uniquenessTheoremClosed (And.intro E.continuationExistsClosed E.monodromyTheoremClosed))

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
