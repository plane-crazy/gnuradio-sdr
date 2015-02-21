#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/brock/sdr/gr-bhj/python
export PATH=/home/brock/sdr/gr-bhj/build/python:$PATH
export LD_LIBRARY_PATH=/home/brock/sdr/gr-bhj/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/brock/sdr/gr-bhj/build/swig:$PYTHONPATH
/usr/bin/python2 /home/brock/sdr/gr-bhj/python/qa_lms_equalizer_cc.py 
