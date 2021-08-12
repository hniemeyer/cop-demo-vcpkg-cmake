#include "gtest/gtest.h"
#include "mathlib/math.hpp"

TEST(Mathtest, Add1) {
    EXPECT_EQ(0, mathlib::add(-1,1));
}

TEST(Mathtest, Add2) {
    EXPECT_EQ(8, mathlib::add(3,5));
}