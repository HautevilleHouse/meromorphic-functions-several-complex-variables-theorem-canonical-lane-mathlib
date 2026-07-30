import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ComplexSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure SeveralComplexVariablesAdmittedObject where
  domain : ComplexSpace
  dimension : Nat
  analyticDefined : Prop
  meromorphicExtension : Prop
  conclusion : meromorphicExtension

def SeveralComplexVariablesWitnessClosed (O : SeveralComplexVariablesAdmittedObject) : Prop :=
  O.meromorphicExtension

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
