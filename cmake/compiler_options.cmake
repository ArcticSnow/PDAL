include_directories(${PDAL_INCLUDE_DIR})
include_directories(${PDAL_UTIL_DIR})
include_directories(${PDAL_SRC_DIR})
include_directories(${PDAL_IO_DIR})
include_directories(${PDAL_KERNEL_DIR})
include_directories(${PDAL_FILTER_DIR})

set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING
      "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel" FORCE)

if (WIN32)
    include (${CMAKE_CURRENT_LIST_DIR}/win32_compiler_options.cmake)
else()
    include (${CMAKE_CURRENT_LIST_DIR}/unix_compiler_options.cmake)
endif()

