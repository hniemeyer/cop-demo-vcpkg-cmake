generate_executable(PROJ_NAME sample_app INT_DEPENDENCIES math EXT_DEPENDENCIES fmt::fmt)
target_precompile_headers(
    sample_app
    PRIVATE
    <fmt/core.h>
    <mathlib/math.hpp>)