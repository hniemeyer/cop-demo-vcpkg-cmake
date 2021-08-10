function(generate_application)
	set(prefix ARG)
	set(noValues)
	set(singleValues PROJ_NAME)
	set(multiValues EXT_DEPENDENCIES INT_DEPENDENCIES)

	cmake_parse_arguments(${prefix}
						 "${noValues}"
						 "${singleValues}"
						 "${multiValues}"
						  ${ARGN})


	message("ext deps: ${ARG_EXT_DEPENDENCIES}")


	file(GLOB_RECURSE SRC_FILES src/*.cpp)
	add_executable (${ARG_PROJ_NAME} ${SRC_FILES})
	target_link_libraries(${ARG_PROJ_NAME} PRIVATE project_warnings ${ARG_EXT_DEPENDENCIES} ${ARG_INT_DEPENDENCIES})
	target_compile_features(${ARG_PROJ_NAME} PRIVATE cxx_std_20)

endfunction()