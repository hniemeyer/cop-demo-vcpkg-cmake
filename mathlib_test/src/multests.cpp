#include "gtest/gtest.h"
#include "mathlib/math.hpp"

TEST(Mathtest, Mul1) {
    EXPECT_EQ(-1, math::mul(-1, 1));
}

TEST(Mathtest, Mul2) {
    EXPECT_EQ(15, math::mul(3, 5));
}