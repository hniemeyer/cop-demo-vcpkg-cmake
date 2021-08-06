#include "gtest/gtest.h"
#include "mathlib/math.hpp"

TEST(Mathtest, Test1) {
    EXPECT_EQ(0, mathlib::add(-1,1));
}

TEST(Mathtest, Test2) {
    EXPECT_EQ(8, mathlib::add(3,5));
}