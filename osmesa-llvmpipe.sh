#/bin/bash -l
export DISPLAY=:0.0
export LD_LIBRARY_PATH=/usr/lib64/openmpi/lib:$LD_LIBRRY_PATH
export PATH=//usr/lib64/openmpi/bin:$PATH
export LP_NUM_THREADS=8
ctest -S /work/dashboards/vtk/osmesa-llvmpipe/osmesa-llvmpipe.cmake --parallel 2 --timeout 120 --output-on-failure -O osmesa-llvmpipe.log -V
