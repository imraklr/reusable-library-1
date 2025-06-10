#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "demo::demo" for configuration "MinSizeRel"
set_property(TARGET demo::demo APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(demo::demo PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/demo.lib"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/demo.dll"
  )

list(APPEND _cmake_import_check_targets demo::demo )
list(APPEND _cmake_import_check_files_for_demo::demo "${_IMPORT_PREFIX}/lib/demo.lib" "${_IMPORT_PREFIX}/bin/demo.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
