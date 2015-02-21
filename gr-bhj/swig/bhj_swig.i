/* -*- c++ -*- */

#define BHJ_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "bhj_swig_doc.i"

%{
#include "bhj/lms_equalizer_cc.h"
%}


%include "bhj/lms_equalizer_cc.h"
GR_SWIG_BLOCK_MAGIC2(bhj, lms_equalizer_cc);

