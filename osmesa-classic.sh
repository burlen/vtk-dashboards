#/bin/bash -l
DASHROOT=/work/dashboards/vtk
cd $DASHROOT
module load mpi/openmpi-x86_64
export DISPLAY=:0.0
ctest \
  -S osmesa-classic.cmake \
  --parallel 4 \
  --timeout 120 \
  --output-on-failure \
  -O osmesa-classic.log \
  -V
