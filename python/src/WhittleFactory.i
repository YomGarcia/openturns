// SWIG file WhittleFactory.i

// do not pass argument by reference, return it as tuple item
%typemap(in, numinputs=0) OT::Point & informationCriteriaOut ($*ltype temp) %{ temp = OT::Point(); $1 = &temp; %}
%typemap(argout) OT::Point & informationCriteriaOut %{ $result = SWIG_Python_AppendOutput($result, SWIG_NewPointerObj(new OT::Point(*$1), SWIGTYPE_p_OT__Point, SWIG_POINTER_OWN |  0 )); %}

%{
#include "openturns/WhittleFactory.hxx"
%}

%template(WhittleFactoryStateCollection)           OT::Collection<OT::WhittleFactoryState>;
%template(WhittleFactoryStatePersistentCollection) OT::PersistentCollection<OT::WhittleFactoryState>;

%include WhittleFactory_doc.i

%include openturns/WhittleFactory.hxx
namespace OT { %extend WhittleFactory { WhittleFactory(const WhittleFactory & other) { return new OT::WhittleFactory(other); } } }
