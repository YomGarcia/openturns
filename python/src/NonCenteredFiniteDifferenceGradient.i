// SWIG file NonCenteredFiniteDifferenceGradient.i

%{
#include "openturns/NonCenteredFiniteDifferenceGradient.hxx"
%}

%include NonCenteredFiniteDifferenceGradient_doc.i

%include openturns/NonCenteredFiniteDifferenceGradient.hxx
namespace OT {  
%extend NonCenteredFiniteDifferenceGradient {

 NonCenteredFiniteDifferenceGradient(const NonCenteredFiniteDifferenceGradient & other)
 {
   return new OT::NonCenteredFiniteDifferenceGradient(other);
 }

 NonCenteredFiniteDifferenceGradient(const Point & epsilon,
                                     const EvaluationImplementation & evaluation)
 {
   return new OT::NonCenteredFiniteDifferenceGradient(epsilon, evaluation.clone());
 }

 NonCenteredFiniteDifferenceGradient(const Scalar epsilon,
                                     const EvaluationImplementation & evaluation)
 {
   return new OT::NonCenteredFiniteDifferenceGradient(epsilon, evaluation.clone());
 }

}

}
