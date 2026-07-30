import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

-- Cauchy integral formula for several complex variables
structure CauchyIntegralPackage where
  polydisc : ComplexSpace
  holomorphicFunction : Prop
  cauchyFormulaExpressed : Prop
  domainSmoothBoundary : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  holomorphicFunctionClosed : C.holomorphicFunction
  cauchyFormulaExpressedClosed : C.cauchyFormulaExpressed
  domainSmoothBoundaryClosed : C.domainSmoothBoundary

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.holomorphicFunction ∧ C.cauchyFormulaExpressed ∧ C.domainSmoothBoundary

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.holomorphicFunctionClosed (And.intro E.cauchyFormulaExpressedClosed E.domainSmoothBoundaryClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
