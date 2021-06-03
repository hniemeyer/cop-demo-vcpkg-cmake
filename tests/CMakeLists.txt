find_package(GTest CONFIG REQUIRED)
include(GoogleTest)

set (TEST_SOURCE_FILES
	main_test.cpp
	first_test.cpp
	)

add_executable(sample-tests ${TEST_SOURCE_FILES})
target_link_libraries(sample-tests PRIVATE GTest::gtest)

gtest_discover_tests(sample-tests)