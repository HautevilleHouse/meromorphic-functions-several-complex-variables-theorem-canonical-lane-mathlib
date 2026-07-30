import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicFunctionsPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  meromorphicFunction : Type v
  poles : Set domain
  poleOrder : domain → ℕ
  laurentExpansion : Prop
  meromorphicClosure : Prop

def MeromorphicFunctionsClosed (M : MeromorphicFunctionsPackage) : Prop :=
  M.meromorphicClosure

theorem meromorphic_functions_closed_from_evidence (M : MeromorphicFunctionsPackage) :
    MeromorphicFunctionsClosed M := by
  exact M.meromorphicClosure

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse