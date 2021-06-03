# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required (VERSION 3.20)

project ("PresetsTest" LANGUAGES CXX)
include(CTest)

# Include sub-projects.
add_subdirectory("SampleApp")

enable_testing()
add_subdirectory(tests)
