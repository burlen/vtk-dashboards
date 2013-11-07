#/bin/bash -l
DASHROOT=/work/dashboards/vtk
cd $DASHROOT
module load mpi/openmpi-x86_64
export DISPLAY=:0.0
export LP_NUM_THREADS=8
ctest \
  -S osmesa-llvmpipe.cmake \
  --parallel 2 \
  --timeout 120 \
  --output-on-failure \
  -O osmesa-llvmpipe.log \
  -V
