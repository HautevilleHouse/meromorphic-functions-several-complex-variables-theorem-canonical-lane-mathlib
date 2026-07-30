import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  meromorphicFunction : domain → ℂ
  closureCondition : Prop
  conclusion : closureCondition

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.closureCondition

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
