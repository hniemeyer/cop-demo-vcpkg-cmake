# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required (VERSION 3.20)

project ("VcpkgDemoCmake" LANGUAGES CXX)
include(CTest)

#Compiler Warnings
# Link this 'library' to use the warnings specified in CompilerWarnings.cmake
add_library(project_warnings INTERFACE)
include(cmake/CompilerWarnings.cmake)
set_project_warnings(project_warnings)

# Include sub-projects.
add_subdirectory("SampleApp")
add_subdirectory("mathlib")

enable_testing()
add_subdirectory(tests)
