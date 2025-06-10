#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "demo::demo" for configuration "Debug"
set_property(TARGET demo::demo APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(demo::demo PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/demo_d.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/demo_d.dll"
  )

list(APPEND _cmake_import_check_targets demo::demo )
list(APPEND _cmake_import_check_files_for_demo::demo "${_IMPORT_PREFIX}/lib/demo_d.lib" "${_IMPORT_PREFIX}/bin/demo_d.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
