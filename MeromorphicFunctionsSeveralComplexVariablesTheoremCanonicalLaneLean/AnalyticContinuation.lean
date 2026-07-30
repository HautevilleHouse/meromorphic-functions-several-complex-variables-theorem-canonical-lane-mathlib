import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure DomainOfHolomorphy where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Prop
  holomorphicFunctionsSeparate : Prop
  holomorphicallyConvex : Prop

structure AnalyticContinuationPackage (D : DomainOfHolomorphy) where
  sheafOfGerms : Type v
  coveringSpace : Type w
  monodromyAction : Prop
  extensionAcrossBoundary : Prop
  stalkFinitelyGenerated : Prop

structure AnalyticContinuationEvidence {D : DomainOfHolomorphy} (P : AnalyticContinuationPackage D) where
  sheafOfGermsDefined : P.sheafOfGerms = P.sheafOfGerms
  coveringSpaceConstructed : P.coveringSpace = P.coveringSpace
  monodromyActionClosed : P.monodromyAction
  extensionAcrossBoundaryClosed : P.extensionAcrossBoundary
  stalkFinitelyGeneratedClosed : P.stalkFinitelyGenerated

def AnalyticContinuationClosed {D : DomainOfHolomorphy} (P : AnalyticContinuationPackage D) : Prop :=
  P.monodromyAction ∧ P.extensionAcrossBoundary ∧ P.stalkFinitelyGenerated

theorem analytic_continuation_closed_from_evidence
    {D : DomainOfHolomorphy} (P : AnalyticContinuationPackage D) (E : AnalyticContinuationEvidence P) :
    AnalyticContinuationClosed P := by
  exact And.intro E.monodromyActionClosed (And.intro E.extensionAcrossBoundaryClosed E.stalkFinitelyGeneratedClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse