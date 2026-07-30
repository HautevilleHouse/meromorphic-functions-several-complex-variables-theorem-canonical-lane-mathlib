import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure HartogsExtensionPackage {C : CanonicalDomainsPackage}
    (R : RiemannRemovableSingularitiesPackage C) where
  separateAnalyticToJoint : Prop
  extensionAcrossCompact : Prop
  cohomologyVanishing : Prop

structure HartogsExtensionEvidence {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C}
    (H : HartogsExtensionPackage R) where
  separateAnalyticToJointClosed : H.separateAnalyticToJoint
  extensionAcrossCompactClosed : H.extensionAcrossCompact
  cohomologyVanishingClosed : H.cohomologyVanishing

def HartogsExtensionClosed {C : CanonicalDomainsPackage}
    {R : RiemannRemovableSingularitiesPackage C}
    (H : HartogsExtensionPackage R) : Prop :=
  H.separateAnalyticToJoint ∧ H.extensionAcrossCompact ∧ H.cohomologyVanishing

theorem hartogs_extension_closed_from_evidence
    {C : CanonicalDomainsPackage} {R : RiemannRemovableSingularitiesPackage C}
    (H : HartogsExtensionPackage R) (E : HartogsExtensionEvidence H) :
    HartogsExtensionClosed H := by
  exact And.intro E.separateAnalyticToJointClosed
    (And.intro E.extensionAcrossCompactClosed E.cohomologyVanishingClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse