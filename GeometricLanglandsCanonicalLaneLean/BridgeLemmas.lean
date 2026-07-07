import GeometricLanglandsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometricLanglandsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.localModelWitness,
    A.object.globalBridgeWitness,
    A.object.functorialityOrCycleGateWitness,
    A.object.schemeMorphismGateWitness,
    A.object.classicalRemainderCarried⟩

end GeometricLanglandsCanonicalLaneLean
end HautevilleHouse
