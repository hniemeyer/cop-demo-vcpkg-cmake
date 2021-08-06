#include <fmt/core.h>
#include "math.hpp"

int main() {
	fmt::print("Hello, world!\n");
	fmt::print("Coming from fmt!\n");
	fmt::print("{}", add(5, 6));
}