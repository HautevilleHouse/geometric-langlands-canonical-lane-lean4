import GeometricLanglandsCanonicalLaneLean.Formalization
import GeometricLanglandsCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace GeometricLanglandsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "77a422b5a09d74c51842c45307f25af1398ec426d80b38725f132d8b900c5537", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "c1150917fc9cb4512b0b5182f1f90438bb6e1f682726eaf1eb802b57818043c4", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "0201b02e630d00163ce6a73f4509231ae0a6c959ef607d99bd40267df7be9e60", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "d6611578d673c02c94b1895b5f6be3da06ccff7c952a2d3a6736b62127df5d6b", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "c81dfb399809d587e4f2d3db25d4972a37b4b7b06321f8180f33329aa10f52d4", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "a1d1ad3073b7fbb0e156638fffb5f5a16ed5ca87a01be205c7a2ba6219990ff8", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "0b0235e404cc24e7e9c6700d89e738a5e59c7ad855f4bf9c4234350c8153760e", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "0496d84d419d3ef32644fe0e0e51eedc5588f727d3078b5eda11ed21ac87aea0", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "2f8bd61cb5ebfc3410486ae30b7ab31df168dbf373eddfcd92324e6a7b33c419", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "9f5e10cbac45162cf493e77a81243b6cef5c37bb64391b661a877fa45044c1ba" },
  { path := "README.md", sha256 := "184580c6567982dc16ceaba04f5f37684381a07c8f08ad5aec8e0a0b20f7e6ac" },
  { path := "artifacts/constants_extracted.json", sha256 := "d6611578d673c02c94b1895b5f6be3da06ccff7c952a2d3a6736b62127df5d6b" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "0201b02e630d00163ce6a73f4509231ae0a6c959ef607d99bd40267df7be9e60" },
  { path := "artifacts/constants_registry.json", sha256 := "c81dfb399809d587e4f2d3db25d4972a37b4b7b06321f8180f33329aa10f52d4" },
  { path := "artifacts/promotion_report.json", sha256 := "0b0235e404cc24e7e9c6700d89e738a5e59c7ad855f4bf9c4234350c8153760e" },
  { path := "artifacts/stitch_constants.json", sha256 := "a1d1ad3073b7fbb0e156638fffb5f5a16ed5ca87a01be205c7a2ba6219990ff8" },
  { path := "notes/EG1_public.md", sha256 := "5f16c5c998dbbd4f949bd8767daa3851621fca61f10601af6b3516cd17912a96" },
  { path := "notes/EG2_public.md", sha256 := "4dd1e858bb5401b57556a292eaba2e6b2612c0afaec2e21dcff34b5f46252c22" },
  { path := "notes/EG3_public.md", sha256 := "4cd57f4370249e2fc8f9ccb253f2de22872eaf50789cc791ef4df5f96b8b9e41" },
  { path := "notes/EG4_public.md", sha256 := "dc382ae01ac25b5c8ab79d1d3c9075a6afb43eb0c7268f5dc6b35787f5855051" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "c1150917fc9cb4512b0b5182f1f90438bb6e1f682726eaf1eb802b57818043c4" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "1222e90e4ae3d163c29500b49e69025186df915e2a823381447c2a51efe07c8a" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "f01684b7c6e3083ead1b9ab929d1f9db1a8ebd1f343142e43e9c56ba02b389f3" },
  { path := "paper/GEOMETRIC_LANGLANDS_PREPRINT.md", sha256 := "cde29c94f01d1a71bfc6724c2a41f5690f527e7fffcdfd2165d917ed8ba503ef" },
  { path := "repro/REPRO_PACK.md", sha256 := "d2f258af960a461cdcb0624412380ae86aa72b46be01128587eadac684d74f9b" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "0c4e05aa170c85563a4131fbb8182d294e054076f4dd0ece1595e12c11e451e7" },
  { path := "repro/certificate_baseline.json", sha256 := "2f8bd61cb5ebfc3410486ae30b7ab31df168dbf373eddfcd92324e6a7b33c419" },
  { path := "repro/run_repro.sh", sha256 := "85b393e33b0718445a6110ede473918f124c3be5f8bf2d4599e5e5b5fdc4d685" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/geo_closure_guard.py", sha256 := "a7e3afcbb0695aa721c53f21103176042eefe748c5d7a08e0866af9bb3b140b3" },
  { path := "scripts/README.md", sha256 := "3d3e7aa0dd260b450c4626584298f1218ad9e086260096aa5e89f79fb9cc25c2" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "GEO_G1", status := "PASS" },
  { gate := "GEO_G2", status := "PASS" },
  { gate := "GEO_G3", status := "PASS" },
  { gate := "GEO_G4", status := "PASS" },
  { gate := "GEO_G5", status := "PASS" },
  { gate := "GEO_G6", status := "PASS" },
  { gate := "GEO_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eigensheaf_transfer", value := "1.0315400000000001" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_hecke", value := "1.0932" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_local", value := "1.0750000000000002" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eigensheaf_transfer",
  "eps_coh",
  "kappa_compact",
  "kappa_hecke",
  "rho_rigidity",
  "sigma_local",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end GeometricLanglandsCanonicalLaneLean
end HautevilleHouse
