import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure CanonicalDomainsPackage where
  cartanThullenPseudoconvex : Prop
  boundedCircularDomains : Prop
  hartogsPhenomenon : Prop
  analyticPolyhedronModel : Prop

structure CanonicalDomainsEvidence (C : CanonicalDomainsPackage) where
  cartanThullenPseudoconvexClosed : C.cartanThullenPseudoconvex
  boundedCircularDomainsClosed : C.boundedCircularDomains
  hartogsPhenomenonClosed : C.hartogsPhenomenon
  analyticPolyhedronModelClosed : C.analyticPolyhedronModel

def CanonicalDomainsClosed (C : CanonicalDomainsPackage) : Prop :=
  C.cartanThullenPseudoconvex ∧ C.boundedCircularDomains ∧
  C.hartogsPhenomenon ∧ C.analyticPolyhedronModel

theorem canonical_domains_closed_from_evidence (C : CanonicalDomainsPackage)
    (E : CanonicalDomainsEvidence C) : CanonicalDomainsClosed C := by
  exact And.intro E.cartanThullenPseudoconvexClosed
    (And.intro E.boundedCircularDomainsClosed
      (And.intro E.hartogsPhenomenonClosed E.analyticPolyhedronModelClosed))

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse