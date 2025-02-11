# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appTask3_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appTask3_autogen.dir/ParseCache.txt"
  "appTask3_autogen"
  )
endif()
