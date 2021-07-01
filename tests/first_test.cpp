#include "gtest/gtest.h"
#include "math.hpp"

TEST(Mathtest, Test1) {
    EXPECT_EQ(0, add(-1,1));
}

TEST(Mathtest, Test2) {
    EXPECT_EQ(8, add(3,5));
}