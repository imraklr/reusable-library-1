add_library(demo SHARED # Or SHARED
    demo.cpp # Source file name
)

# This is the crucial line: define DEMO_EXPORTS when building the 'demo' target.
target_compile_definitions(demo PUBLIC DEMO_EXPORTS)

set_target_properties(demo PROPERTIES # Target name is 'demo'
    DEBUG_POSTFIX "_d"
)