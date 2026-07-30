import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure EndpointValueDistributionPackage {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H} {N : NonequidimensionalMeromorphicPackage L}
    (Q : QuotientSheafPackage N) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  meromorphicFunctionExtended : Prop
  valueDistributionInequality : Prop

structure EndpointValueDistributionEvidence {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H} {N : NonequidimensionalMeromorphicPackage L}
    {Q : QuotientSheafPackage N} (Epkg : EndpointValueDistributionPackage Q) where
  meromorphicFunctionExtendedClosed : Epkg.meromorphicFunctionExtended
  valueDistributionInequalityClosed : Epkg.valueDistributionInequality

def EndpointValueDistributionClosed {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H} {N : NonequidimensionalMeromorphicPackage L}
    {Q : QuotientSheafPackage N} (Epkg : EndpointValueDistributionPackage Q) : Prop :=
  Epkg.meromorphicFunctionExtended ∧ Epkg.valueDistributionInequality

theorem endpoint_value_distribution_closed_from_evidence
    {C : CanonicalDomainsPackage} {R : RiemannRemovableSingularitiesPackage C}
    {H : HartogsExtensionPackage R} {L : LeviPseudoconvexPackage H}
    {N : NonequidimensionalMeromorphicPackage L} {Q : QuotientSheafPackage N}
    (Epkg : EndpointValueDistributionPackage Q) (E : EndpointValueDistributionEvidence Epkg) :
    EndpointValueDistributionClosed Epkg := by
  exact And.intro E.meromorphicFunctionExtendedClosed E.valueDistributionInequalityClosed

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse