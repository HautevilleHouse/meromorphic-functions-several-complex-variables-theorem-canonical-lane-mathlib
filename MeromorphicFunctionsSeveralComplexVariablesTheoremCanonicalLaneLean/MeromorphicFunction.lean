import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicFunction where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  poleSet : Set domain
  holomorphicOnComplement : Prop
  localRepresentation : Prop

structure MeromorphicFunctionPackage (F : MeromorphicFunction) where
  projectiveSpaceExtension : Type v
  kCohomologyClass : Type w
  wellDefinedness : Prop
  identificationWithSections : Prop

structure MeromorphicFunctionEvidence {F : MeromorphicFunction} (M : MeromorphicFunctionPackage F) where
  projectiveSpaceExtensionConstructed : M.projectiveSpaceExtension = M.projectiveSpaceExtension
  kCohomologyClassDefined : M.kCohomologyClass = M.kCohomologyClass
  wellDefinednessClosed : M.wellDefinedness
  identificationWithSectionsClosed : M.identificationWithSections

def MeromorphicFunctionClosed {F : MeromorphicFunction} (M : MeromorphicFunctionPackage F) : Prop :=
  M.wellDefinedness ∧ M.identificationWithSections

theorem meromorphic_function_closed_from_evidence
    {F : MeromorphicFunction} (M : MeromorphicFunctionPackage F) (E : MeromorphicFunctionEvidence M) :
    MeromorphicFunctionClosed M := by
  exact And.intro E.wellDefinednessClosed E.identificationWithSectionsClosed

end MeromorphicFunctionsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse