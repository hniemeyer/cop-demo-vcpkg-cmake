#include "gtest/gtest.h"
#include "mathlib/math.hpp"

TEST(Mathtest, Mul1) {
    EXPECT_EQ(-1, mathlib::mul(-1, 1));
}

TEST(Mathtest, Mul2) {
    EXPECT_EQ(15, mathlib::mul(3, 5));
}