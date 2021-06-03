#include "gtest/gtest.h"
#include "math.hpp"

TEST(Global, Test1) {
    EXPECT_EQ(1, 1);
}

TEST(Global, Test2) {
    EXPECT_EQ(8, add(3,5));
}