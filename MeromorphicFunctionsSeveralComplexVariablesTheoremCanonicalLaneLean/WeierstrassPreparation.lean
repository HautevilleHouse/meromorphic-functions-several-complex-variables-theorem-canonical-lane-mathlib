import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure SeveralComplexVariables where
  dimension : Nat
  coordinates : List ℂ
  point : List ℂ

structure WeierstrassPreparationPackage (S : SeveralComplexVariables) where
  weierstrassPolynomial : Type u
  distinguishedWeierstrassSet : Prop
  weierstrassDivision : Prop
  factorizationProperty : Prop

structure WeierstrassPreparationEvidence {S : SeveralComplexVariables} (W : WeierstrassPreparationPackage S) where
  weierstrassPolynomialDefined : W.weierstrassPolynomial = W.weierstrassPolynomial
  distinguishedWeierstrassSetClosed : W.distinguishedWeierstrassSet
  weierstrassDivisionClosed : W.weierstrassDivision
  factorizationPropertyClosed : W.factorizationProperty

def WeierstrassPreparationClosed {S : SeveralComplexVariables} (W : WeierstrassPreparationPackage S) : Prop :=
  W.distinguishedWeierstrassSet ∧ W.weierstrassDivision ∧ W.factorizationProperty

theorem weierstrass_preparation_closed_from_evidence
    {S : SeveralComplexVariables} (W : WeierstrassPreparationPackage S) (E : WeierstrassPreparationEvidence W) :
    WeierstrassPreparationClosed W := by
  exact And.intro E.distinguishedWeierstrassSetClosed (And.intro E.weierstrassDivisionClosed E.factorizationPropertyClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse