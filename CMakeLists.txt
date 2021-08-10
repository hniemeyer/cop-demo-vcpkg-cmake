# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required (VERSION 3.20)

project ("VcpkgDemoCmake" LANGUAGES CXX)
include(CTest)

#find external libs
find_package(fmt CONFIG REQUIRED)
find_package(GTest CONFIG REQUIRED)
include(GoogleTest)

#Standard project setting
include(cmake/StandardProjectSettings.cmake)

#Compiler Warnings
# Link this 'library' to use the warnings specified in CompilerWarnings.cmake
add_library(project_warnings INTERFACE)
include(cmake/CompilerWarnings.cmake)
set_project_warnings(project_warnings)

#functionality to generate executables, libs and test cases accordingly
include(cmake/GenerateProjects.cmake)

# Include sub-projects.
add_subdirectory("sample_app")
add_subdirectory("mathlib")

enable_testing()
add_subdirectory("mathlib_test")
