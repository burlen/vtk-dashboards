# bloring lbl gov
# Fedora release 19 (Schrödinger’s Cat)
# Intel(R) Core(TM) i7-4771 CPU @ 3.50GHz
# MemTotal: 16364536 kB
# AMD Radeon HD 7800 Series
set(CTEST_SITE "rocky.lbl.gov")
set(CTEST_BUILD_NAME "Fedora19-gcc4.8.2-ATI-RadeonHD-7870")
set(CTEST_CONFIGURATION_TYPE Debug)
set(CTEST_CMAKE_GENERATOR "Ninja")
set(CTEST_DASHBOARD_ROOT "/work/dashboards/vtk/ati")
set(CMAKE_MAKE_PROGRAM "ninja-build")
set(dashboard_model Nightly)
set(dashboard_cache
"CMAKE_CXX_COMPILER=/bin/g++
CMAKE_C_COMPILER=/bin/gcc
CMAKE_FORTRAN_COMPILER=/bin/gfortran
CMAKE_CXX_FLAGS=-Wall -Wextra
CMAKE_BUILD_TYPE=Debug
VTK_DEBUG_LEAKS=ON
BUILD_SHARED_LIBS=ON
BUILD_TESTING=ON
VTK_WRAP_PYTHON=ON
VTK_WRAP_TCL=ON
VTK_BUILD_ALL_MODULES=ON
VTK_DATA_STORE=/work/dashboards/VTKExternalData
VTK_USE_LARGE_DATA:BOOL=ON
")
include(/work/dashboards/vtk/script/vtk_common.cmake)
