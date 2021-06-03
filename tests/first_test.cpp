#include "gtest/gtest.h"

TEST(Global, Test1) {
    EXPECT_EQ(1, 1);
    EXPECT_TRUE(true);
}

TEST(Global, Test2) {
    EXPECT_EQ(5, 5);
}