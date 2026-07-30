import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ComplexStructure (D : Type u) [TopologicalSpace D] where
  atlas : Set (Set D)
  charts : Type v
  transitionMapsHolomorphic : Prop
  holomorphicMapsCompatible : Prop

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
