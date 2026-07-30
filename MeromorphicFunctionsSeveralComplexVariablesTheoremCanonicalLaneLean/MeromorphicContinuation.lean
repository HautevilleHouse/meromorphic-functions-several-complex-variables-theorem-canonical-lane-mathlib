import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicFunctionsSCV

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicContinuationPackage where
  func : MeromorphicFunctionsPackage
  continuationDomain : Type u
  continuationTopology : TopologicalSpace continuationDomain
  analyticContinuation : Prop
  monodromyCompatible : Prop
  analyticContinuationClosed : analyticContinuation
  monodromyCompatibleClosed : monodromyCompatible

def MeromorphicContinuationClosed (C : MeromorphicContinuationPackage) : Prop :=
  C.analyticContinuation ∧ C.monodromyCompatible

theorem meromorphic_continuation_closed_from_evidence
    (C : MeromorphicContinuationPackage)
    (E : C.analyticContinuation ∧ C.monodromyCompatible) :
    MeromorphicContinuationClosed C := by
  exact And.intro E.1 E.2

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse