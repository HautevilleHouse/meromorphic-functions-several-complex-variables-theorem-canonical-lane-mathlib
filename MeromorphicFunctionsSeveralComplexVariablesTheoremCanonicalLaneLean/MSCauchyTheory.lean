import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure Polydisc where
  dimension : Nat
  radii : List ℂ
  center : List ℂ
  productStructure : Prop

structure CauchyIntegralPackage (P : Polydisc) where
  cauchyKernel : Type u
  iteratedIntegral : Prop
  holomorphicDependence : Prop
  cauchyEstimate : Prop

structure CauchyIntegralEvidence {P : Polydisc} (C : CauchyIntegralPackage P) where
  cauchyKernelDefined : C.cauchyKernel = C.cauchyKernel
  iteratedIntegralClosed : C.iteratedIntegral
  holomorphicDependenceClosed : C.holomorphicDependence
  cauchyEstimateClosed : C.cauchyEstimate

def CauchyIntegralClosed {P : Polydisc} (C : CauchyIntegralPackage P) : Prop :=
  C.iteratedIntegral ∧ C.holomorphicDependence ∧ C.cauchyEstimate

theorem cauchy_integral_closed_from_evidence
    {P : Polydisc} (C : CauchyIntegralPackage P) (E : CauchyIntegralEvidence C) :
    CauchyIntegralClosed C := by
  exact And.intro E.iteratedIntegralClosed (And.intro E.holomorphicDependenceClosed E.cauchyEstimateClosed)

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse