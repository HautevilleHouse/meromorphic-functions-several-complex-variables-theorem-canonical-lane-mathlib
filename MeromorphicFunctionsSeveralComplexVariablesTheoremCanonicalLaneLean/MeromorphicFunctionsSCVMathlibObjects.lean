import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ComplexManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Type
  openCover : List (carrier → Type)

structure MeromorphicAdmittedObject where
  space : ComplexManifold
  domainOpen : Prop
  meromorphicFunction : space.carrier → ℂ
  polarSet : Set space.carrier
  analyticPartOpen : Prop
  conclusion : analyticPartOpen

structure MeromorphicEndgameState where
  object : MeromorphicAdmittedObject

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.analyticPartOpen

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse