import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

-- Analytic continuation along path (Hartogs' phenomenon)
structure AnalyticContinuationPackage where
  germ : Type
  path : Type
  continuationDefined : Prop
  uniqueness : Prop
  hartogsExtension : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  continuationDefinedClosed : A.continuationDefined
  uniquenessClosed : A.uniqueness
  hartogsExtensionClosed : A.hartogsExtension

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.continuationDefined ∧ A.uniqueness ∧ A.hartogsExtension

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.continuationDefinedClosed (And.intro E.uniquenessClosed E.hartogsExtensionClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
