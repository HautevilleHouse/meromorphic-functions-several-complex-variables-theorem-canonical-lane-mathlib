import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure RiemannRemovableSingularitiesPackage (C : CanonicalDomainsPackage) where
  locallyBoundedExtension : Prop
  analyticSetCodimensionOne : Prop
  meromorphicContinuation : Prop

structure RiemannRemovableSingularitiesEvidence (R : RiemannRemovableSingularitiesPackage C) where
  locallyBoundedExtensionClosed : R.locallyBoundedExtension
  analyticSetCodimensionOneClosed : R.analyticSetCodimensionOne
  meromorphicContinuationClosed : R.meromorphicContinuation

def RiemannRemovableSingularitiesClosed (R : RiemannRemovableSingularitiesPackage C) : Prop :=
  R.locallyBoundedExtension ∧ R.analyticSetCodimensionOne ∧ R.meromorphicContinuation

theorem riemann_removable_singularities_closed_from_evidence
    (R : RiemannRemovableSingularitiesPackage C) (E : RiemannRemovableSingularitiesEvidence R) :
    RiemannRemovableSingularitiesClosed R := by
  exact And.intro E.locallyBoundedExtensionClosed
    (And.intro E.analyticSetCodimensionOneClosed E.meromorphicContinuationClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse