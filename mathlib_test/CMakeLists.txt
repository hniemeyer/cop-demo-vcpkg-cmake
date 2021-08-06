find_package(GTest CONFIG REQUIRED)
include(GoogleTest)

file(GLOB_RECURSE TEST_SOURCE_FILES src/*.cpp)

add_executable(mathlib-tests ${TEST_SOURCE_FILES})
target_link_libraries(mathlib-tests PRIVATE project_warnings math GTest::gtest)
target_compile_features(mathlib-tests PRIVATE cxx_std_20)

gtest_discover_tests(mathlib-tests)