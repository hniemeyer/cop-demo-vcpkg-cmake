add_library(math STATIC math.cpp include/math.hpp)
target_include_directories(math PUBLIC include)
target_link_libraries(math PRIVATE)