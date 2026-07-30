import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure LeviPseudoconvexPackage {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C}
    (H : HartogsExtensionPackage R) where
  plurisubharmonicExhaustion : Prop
  solutionToDbar : Prop
  domainOfHolomorphyEquivalence : Prop

structure LeviPseudoconvexEvidence {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C}
    {H : HartogsExtensionPackage R}
    (L : LeviPseudoconvexPackage H) where
  plurisubharmonicExhaustionClosed : L.plurisubharmonicExhaustion
  solutionToDbarClosed : L.solutionToDbar
  domainOfHolomorphyEquivalenceClosed : L.domainOfHolomorphyEquivalence

def LeviPseudoconvexClosed {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C}
    {H : HartogsExtensionPackage R}
    (L : LeviPseudoconvexPackage H) : Prop :=
  L.plurisubharmonicExhaustion ∧ L.solutionToDbar ∧ L.domainOfHolomorphyEquivalence

theorem levi_pseudoconvex_closed_from_evidence
    {C : CanonicalDomainsPackage} {R : RiemannRemovableSingularitiesPackage C}
    {H : HartogsExtensionPackage R} (L : LeviPseudoconvexPackage H)
    (E : LeviPseudoconvexEvidence L) : LeviPseudoconvexClosed L := by
  exact And.intro E.plurisubharmonicExhaustionClosed
    (And.intro E.solutionToDbarClosed E.domainOfHolomorphyEquivalenceClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse