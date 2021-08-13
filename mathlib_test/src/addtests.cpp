#include "gtest/gtest.h"
#include "mathlib/math.hpp"

TEST(Mathtest, Add1) {
    EXPECT_EQ(0, math::add(-1,1));
}

TEST(Mathtest, Add2) {
    EXPECT_EQ(8, math::add(3,5));
}