import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure NonequidimensionalMeromorphicPackage {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    (L : LeviPseudoconvexPackage H) where
  graphClosure : Prop
  codimensionOneExtension : Prop
  poleSetAnalytic : Prop
  meromorphicSheafDefined : Prop

structure NonequidimensionalMeromorphicEvidence {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H}
    (N : NonequidimensionalMeromorphicPackage L) where
  graphClosureClosed : N.graphClosure
  codimensionOneExtensionClosed : N.codimensionOneExtension
  poleSetAnalyticClosed : N.poleSetAnalytic
  meromorphicSheafDefinedClosed : N.meromorphicSheafDefined

def NonequidimensionalMeromorphicClosed {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H}
    (N : NonequidimensionalMeromorphicPackage L) : Prop :=
  N.graphClosure ∧ N.codimensionOneExtension ∧ N.poleSetAnalytic ∧ N.meromorphicSheafDefined

theorem nonequidimensional_meromorphic_closed_from_evidence
    {C : CanonicalDomainsPackage} {R : RiemannRemovableSingularitiesPackage C}
    {H : HartogsExtensionPackage R} {L : LeviPseudoconvexPackage H}
    (N : NonequidimensionalMeromorphicPackage L) (E : NonequidimensionalMeromorphicEvidence N) :
    NonequidimensionalMeromorphicClosed N := by
  exact And.intro E.graphClosureClosed
    (And.intro E.codimensionOneExtensionClosed
      (And.intro E.poleSetAnalyticClosed E.meromorphicSheafDefinedClosed))

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse