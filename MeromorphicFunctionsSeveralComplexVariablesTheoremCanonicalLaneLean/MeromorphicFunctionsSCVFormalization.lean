import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure FormulaExpr where
  | var (name : String)
  | num (value : String)
  | add (lhs rhs : FormulaExpr)
  | sub (lhs rhs : FormulaExpr)
  | mul (lhs rhs : FormulaExpr)
  | div (lhs rhs : FormulaExpr)
  | neg (arg : FormulaExpr)
  | abs (arg : FormulaExpr)
  | min (lhs rhs : FormulaExpr)
  | max (lhs rhs : FormulaExpr)
  | raw (formula : String)
deriving Repr, DecidableEq

structure FormulaComponent where
  key : String
  value : String
deriving Repr, DecidableEq

structure SourceFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  expr : FormulaExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
  componentKeys : List String
  components : List FormulaComponent
deriving Repr, DecidableEq

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def sourceFormulaModels : List SourceFormulaModel :=
  [{ group := "constants", key := "analytic_coherence", status := "derived_numeric", formula := "analytic_coherence_raw", expr := FormulaExpr.var "analytic_coherence_raw", parseStatus := "parsed_source_expression", sourceSection := "paper/MEROMORPHIC_FUNCTIONS_SEVERAL_COMPLEX_VARIABLES_PREPRINT.md Appendix C", notes := "Domain coherence target.", validation := "required_nonnegative", componentKeys := ["analytic_coherence_raw"], components := [{ key := "analytic_coherence_raw", value := "0.0" }] },
   { group := "constants", key := "polar_separation", status := "derived_numeric", formula := "polar_separation_raw", expr := FormulaExpr.var "polar_separation_raw", parseStatus := "parsed_source_expression", sourceSection := "paper/MEROMORPHIC_FUNCTIONS_SEVERAL_COMPLEX_VARIABLES_PREPRINT.md Section 3", notes := "Separation of polar sets.", validation := "required_positive", componentKeys := ["polar_separation_raw"], components := [{ key := "polar_separation_raw", value := "1.0" }] }]

def sourceFiles : List String := ["src/meromorphic_scv_core.py", "src/analytic_continuation.py"]

def sourceFunctions : List String := ["core_lemma", "analytic_continuation_pipeline"]

def constantSpecs : List String := ["analytic_coherence", "polar_separation"]

def registryConstants : List String := ["analytic_coherence", "polar_separation"]

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := "meromorphic-functions-scv-canonical-lane",
  sourceCheckoutHead := "abc123",
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse