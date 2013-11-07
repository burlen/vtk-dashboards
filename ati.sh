#/bin/bash -l
DASHROOT=/work/dashboards/vtk
cd $DASHROOT
module load mpi/openmpi-x86_64
export DISPLAY=:0.0
ctest \
  -S ati.cmake \
  --parallel 4 \
  --timeout 35 \
  --output-on-failure \
  -O ati.log \
  -V
