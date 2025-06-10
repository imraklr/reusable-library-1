#include "gtest/gtest.h"
#include "demo/demo.h" // Include path updated

struct MyLibraryTest : public ::testing::Test {
    // ...
};

TEST_F(MyLibraryTest, AddFunctionWorks) {
    ASSERT_EQ(demo::add(2, 3), 5); // Namespace updated
    ASSERT_EQ(demo::add(-1, 1), 0);
    ASSERT_EQ(demo::add(0, 0), 0);
}

TEST_F(MyLibraryTest, HelloWorldPrintsMessage) {
    demo::hello_world(); // Namespace updated
    SUCCEED();
}