#include <fmt/core.h>
#include "mathlib/math.hpp"

int main() {
	fmt::print("Hello, world!\n");
	fmt::print("Coming from fmt!\n");
	fmt::print("5+6 = {}\n", math::add(5, 6));
	fmt::print("5*6 = {}\n", math::mul(5, 6));
}