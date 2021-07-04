# CMakeList.txt : CMake project for PresetsTest, include source and define
# project specific logic here.
#
find_package(fmt CONFIG REQUIRED)

# Add source to this project's executable.
add_executable (sample_app "sample_app.cpp")
target_link_libraries(sample_app PRIVATE project_warnings fmt::fmt math)
target_compile_features(sample_app PRIVATE cxx_std_20)