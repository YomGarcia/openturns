// SWIG file BasisSequenceFactoryImplementation.i

%{
#include "openturns/BasisSequenceFactoryImplementation.hxx"
%}

%include BasisSequenceFactoryImplementation_doc.i

%include openturns/BasisSequenceFactoryImplementation.hxx
namespace OT { %extend BasisSequenceFactoryImplementation { BasisSequenceFactoryImplementation(const BasisSequenceFactoryImplementation & other) { return new OT::BasisSequenceFactoryImplementation(other); } } }
