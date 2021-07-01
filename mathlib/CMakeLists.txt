add_library(math STATIC math.cpp include/math.hpp)
target_include_directories(math PUBLIC include)
target_link_libraries(SampleApp PRIVATE project_warnings)
target_compile_features(math PRIVATE cxx_std_20)