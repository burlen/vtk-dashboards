#/bin/bash -l
export DISPLAY=:0.0
export LD_LIBRARY_PATH=/usr/lib64/openmpi/lib:$LD_LIBRRY_PATH
export PATH=//usr/lib64/openmpi/bin:$PATH
ctest -S /work/dashboards/vtk/osmesa-classic/osmesa-classic.cmake --parallel 4 --timeout 120 --output-on-failure -O osmesa-classic.log -V
