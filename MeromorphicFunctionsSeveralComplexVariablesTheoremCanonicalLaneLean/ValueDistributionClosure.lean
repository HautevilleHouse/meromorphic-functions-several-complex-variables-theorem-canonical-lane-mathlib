import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

-- Value distribution theory for meromorphic functions
structure ValueDistributionPackage where
  functionCarrier : Type
  targetSpace : ComplexSpace
  picardExceptional : Prop
  juliaSetControl : Prop
  defectRelation : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  picardExceptionalClosed : V.picardExceptional
  juliaSetControlClosed : V.juliaSetControl
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.picardExceptional ∧ V.juliaSetControl ∧ V.defectRelation

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.picardExceptionalClosed (And.intro E.juliaSetControlClosed E.defectRelationClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
