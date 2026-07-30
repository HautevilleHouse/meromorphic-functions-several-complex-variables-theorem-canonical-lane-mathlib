import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.BridgeLemmas
import MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

def ConstrainedMeromorphicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_meromorphic_endgame (A : AdmissibleClass) :
    ConstrainedMeromorphicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
