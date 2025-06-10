# get googletest
include(FetchContent)
FetchContent_Declare(googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG v1.16.0
)
FetchContent_MakeAvailable(googletest)

add_executable(demoTests test_demo.cpp) # Test executable name updated

target_link_libraries(demoTests PRIVATE
    demo # Link to the 'demo' library target
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(demoTests) # Discover tests for 'demoTests'

set_target_properties(demoTests PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin/tests"
)