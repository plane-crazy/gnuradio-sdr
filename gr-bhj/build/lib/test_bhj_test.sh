#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/brock/sdr/gr-bhj/lib
export PATH=/home/brock/sdr/gr-bhj/build/lib:$PATH
export LD_LIBRARY_PATH=/home/brock/sdr/gr-bhj/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-bhj 
