#include "demo/demo.h"
#include <iostream>

namespace demo {
    // Apply DEMO_API to the function definitions
    DEMO_API void hello_world() {
        std::cout << "Hello from demo library!" << std::endl;
    }

    // Apply DEMO_API to the function definitions
    DEMO_API int add(int a, int b) {
        return a + b;
    }
} // namespace demo