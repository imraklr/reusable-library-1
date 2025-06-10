#ifndef DEMO_DEMO_H // Header guard updated
#define DEMO_DEMO_H

#ifdef _WIN32
    #ifdef DEMO_EXPORTS // Macro updated
        #define DEMO_API __declspec(dllexport)
    #else
        #define DEMO_API __declspec(dllimport)
    #endif
#else
    #define DEMO_API
#endif

namespace demo { // Namespace updated
    DEMO_API void hello_world();
    DEMO_API int add(int a, int b);
} // namespace demo

#endif // DEMO_DEMO_H