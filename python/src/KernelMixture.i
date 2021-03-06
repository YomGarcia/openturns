// SWIG file KernelMixture.i

%{
#include "openturns/KernelMixture.hxx"
%}

%include KernelMixture_doc.i

%include openturns/KernelMixture.hxx
namespace OT { %extend KernelMixture { KernelMixture(const KernelMixture & other) { return new OT::KernelMixture(other); } } }
namespace OT { %extend KernelMixture { KernelMixture(const OT::DistributionImplementation & kernel, const OT::Point & bandwidth, const OT::Sample & sample) { return new OT::KernelMixture(OT::Distribution(kernel), bandwidth, sample); } } }
