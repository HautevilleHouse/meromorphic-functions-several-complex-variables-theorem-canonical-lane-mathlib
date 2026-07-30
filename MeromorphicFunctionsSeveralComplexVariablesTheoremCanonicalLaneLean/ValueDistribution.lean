import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicFunctionsSCV

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ValueDistributionPackage where
  func : MeromorphicFunctionsPackage
  nevanlinnaCharacteristic : Type u
  firstMainTheorem : Prop
  secondMainTheorem : Prop
  defectRelation : Prop
  firstMainTheoremClosed : firstMainTheorem
  secondMainTheoremClosed : secondMainTheorem
  defectRelationClosed : defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.firstMainTheorem ∧ V.secondMainTheorem ∧ V.defectRelation

theorem value_distribution_closed_from_evidence
    (V : ValueDistributionPackage)
    (E : V.firstMainTheorem ∧ V.secondMainTheorem ∧ V.defectRelation) :
    ValueDistributionClosed V := by
  exact And.intro E.1 (And.intro E.2.1 E.2.2)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse