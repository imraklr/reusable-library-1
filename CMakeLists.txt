cmake_minimum_required(VERSION 3.15)
project(demo VERSION 1.0.0 LANGUAGES CXX) # Project name is now 'demo'

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Add library sources. This will define the 'demo' target.
add_subdirectory(src)

# Define public include directory for the library.
# Note: Using PROJECT_NAME here, which is 'demo'.
target_include_directories(${PROJECT_NAME} PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)

# --- Test Configuration ---
if(PROJECT_IS_TOP_LEVEL)
    enable_testing()
    add_subdirectory(test EXCLUDE_FROM_ALL)
endif()

# --- Installation (for find_package compatibility) ---
install(TARGETS demo # Install the 'demo' target
        EXPORT demoTargets # Export 'demoTargets'
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        PUBLIC_HEADER DESTINATION include/${PROJECT_NAME} # Installs to include/demo
)

# Generate and install the configuration file for find_package()
if(PROJECT_IS_TOP_LEVEL)
    install(EXPORT demoTargets # Export 'demoTargets'
            FILE demoTargets.cmake # File name is 'demoTargets.cmake'
            NAMESPACE demo:: # Namespace for imported targets is 'demo::'
            DESTINATION lib/cmake/${PROJECT_NAME}
    )

    configure_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake/demoConfig.cmake.in" # Template name is 'demoConfig.cmake.in'
        "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake" # Generated file name is 'demoConfig.cmake'
        @ONLY
    )
    install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
            DESTINATION lib/cmake/${PROJECT_NAME}
    )
endif()