import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure OkaCoherencePackage {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H} {N : NonequidimensionalMeromorphicPackage L}
    (Q : QuotientSheafPackage N) where
  structureSheafCoherent : Prop
  idealSheafCoherent : Prop
  finitenessTheorem : Prop

structure OkaCoherenceEvidence {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H} {N : NonequidimensionalMeromorphicPackage L}
    {Q : QuotientSheafPackage N} (O : OkaCoherencePackage Q) where
  structureSheafCoherentClosed : O.structureSheafCoherent
  idealSheafCoherentClosed : O.idealSheafCoherent
  finitenessTheoremClosed : O.finitenessTheorem

def OkaCoherenceClosed {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C} {H : HartogsExtensionPackage R}
    {L : LeviPseudoconvexPackage H} {N : NonequidimensionalMeromorphicPackage L}
    {Q : QuotientSheafPackage N} (O : OkaCoherencePackage Q) : Prop :=
  O.structureSheafCoherent ∧ O.idealSheafCoherent ∧ O.finitenessTheorem

theorem oka_coherence_closed_from_evidence
    {C : CanonicalDomainsPackage} {R : RiemannRemovableSingularitiesPackage C}
    {H : HartogsExtensionPackage R} {L : LeviPseudoconvexPackage H}
    {N : NonequidimensionalMeromorphicPackage L} {Q : QuotientSheafPackage N}
    (O : OkaCoherencePackage Q) (E : OkaCoherenceEvidence O) :
    OkaCoherenceClosed O := by
  exact And.intro E.structureSheafCoherentClosed
    (And.intro E.idealSheafCoherentClosed E.finitenessTheoremClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse