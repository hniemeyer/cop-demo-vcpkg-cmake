# CMakeList.txt : CMake project for PresetsTest, include source and define
# project specific logic here.
#
find_package(fmt CONFIG REQUIRED)

# Add source to this project's executable.
add_executable (SampleApp "sample_app.cpp")
target_link_libraries(SampleApp PRIVATE fmt::fmt math)
target_compile_features(SampleApp PRIVATE cxx_std_20)