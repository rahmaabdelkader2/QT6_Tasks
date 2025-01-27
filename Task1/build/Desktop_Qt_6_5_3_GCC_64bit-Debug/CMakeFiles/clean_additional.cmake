# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appTask1_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appTask1_autogen.dir/ParseCache.txt"
  "appTask1_autogen"
  )
endif()
