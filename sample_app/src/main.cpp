#include <fmt/core.h>
#include "mathlib/math.hpp"

int main() {
	fmt::print("Hello, world!\n");
	fmt::print("Coming from fmt!\n");
	fmt::print("{}", mathlib::add(5, 6));
}