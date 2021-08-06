find_package(GTest CONFIG REQUIRED)
include(GoogleTest)

file(GLOB_RECURSE TEST_SOURCE_FILES src/*.cpp)

add_executable(sample-tests ${TEST_SOURCE_FILES})
target_link_libraries(sample-tests PRIVATE project_warnings math GTest::gtest)
target_compile_features(sample-tests PRIVATE cxx_std_20)

gtest_discover_tests(sample-tests)