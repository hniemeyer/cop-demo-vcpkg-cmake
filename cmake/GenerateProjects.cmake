function(generate_executable)
    set(prefix ARG)
    set(noValues)
    set(singleValues PROJ_NAME)
    set(multiValues EXT_DEPENDENCIES INT_DEPENDENCIES)

    cmake_parse_arguments(${prefix}
                         "${noValues}"
                         "${singleValues}"
                         "${multiValues}"
                          ${ARGN})

    message("--------------------")
    message("generating executable: ${ARG_PROJ_NAME} ")
    message("ext deps: ${ARG_EXT_DEPENDENCIES}")
    message("int deps: ${ARG_INT_DEPENDENCIES}")
    message("--------------------")

    file(GLOB_RECURSE SRC_FILES src/*.cpp)
    add_executable (${ARG_PROJ_NAME} ${SRC_FILES})
    target_link_libraries(${ARG_PROJ_NAME} PRIVATE project_warnings ${ARG_EXT_DEPENDENCIES} ${ARG_INT_DEPENDENCIES})
    target_compile_features(${ARG_PROJ_NAME} PRIVATE cxx_std_20)

endfunction()

function(generate_library)
    set(prefix ARG)
    set(noValues)
    set(singleValues PROJ_NAME)
    set(multiValues EXT_DEPENDENCIES INT_DEPENDENCIES)

    cmake_parse_arguments(${prefix}
                         "${noValues}"
                         "${singleValues}"
                         "${multiValues}"
                          ${ARGN})

    message("--------------------")
    message("generating static library: ${ARG_PROJ_NAME} ")
    message("ext deps: ${ARG_EXT_DEPENDENCIES}")
    message("int deps: ${ARG_INT_DEPENDENCIES}")
    message("--------------------")

    file(GLOB_RECURSE SRC_FILES src/*.cpp)
    file(GLOB_RECURSE  HEADER_FILES include/*.h)
    add_library(${ARG_PROJ_NAME} STATIC ${SRC_FILES} ${HEADER_FILES})
    target_include_directories(${ARG_PROJ_NAME} PUBLIC include)
    target_link_libraries(${ARG_PROJ_NAME} PRIVATE project_warnings ${ARG_EXT_DEPENDENCIES} ${ARG_INT_DEPENDENCIES})
    target_compile_features(${ARG_PROJ_NAME} PRIVATE cxx_std_20)
endfunction()
