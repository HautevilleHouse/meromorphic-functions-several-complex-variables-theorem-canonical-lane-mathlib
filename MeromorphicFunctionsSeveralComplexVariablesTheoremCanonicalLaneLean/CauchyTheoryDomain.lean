import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean.ComplexStructure

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure CauchyTheoryDomain {D : Type u} [TopologicalSpace D] (C : ComplexStructure D) where
  integralFormula : Prop
  residueTheorem : Prop
  cauchyIntegralFormula : Prop
  homotopyInvariance : Prop

structure CauchyTheoryEvidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : CauchyTheoryDomain C) where
  integralFormulaClosed : domain.integralFormula
  residueTheoremClosed : domain.residueTheorem
  cauchyIntegralFormulaClosed : domain.cauchyIntegralFormula
  homotopyInvarianceClosed : domain.homotopyInvariance

def CauchyTheoryClosed {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : CauchyTheoryDomain C) : Prop :=
  domain.integralFormula ∧ domain.residueTheorem ∧ domain.cauchyIntegralFormula ∧ domain.homotopyInvariance

theorem cauchy_theory_closed_from_evidence {D : Type u} [TopologicalSpace D] {C : ComplexStructure D} (domain : CauchyTheoryDomain C) (E : CauchyTheoryEvidence domain) : CauchyTheoryClosed domain := by
  exact And.intro E.integralFormulaClosed (And.intro E.residueTheoremClosed (And.intro E.cauchyIntegralFormulaClosed E.homotopyInvarianceClosed))

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
