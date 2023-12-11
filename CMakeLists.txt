cmake_minimum_required(VERSION 3.6)
project(Skeleton)

# LLVM uses C++17.
set(CMAKE_CXX_STANDARD 17)

# Load LLVMConfig.cmake. If this fails, consider setting `LLVM_DIR` to point
# to your LLVM installation's `lib/cmake/llvm` directory.
set(LLVM_DIR /usr/lib/llvm-17/cmake)
message(STATUS "LLVM_DIR is set to: ${LLVM_DIR}")
find_package(LLVM REQUIRED CONFIG)

# Include the part of LLVM's CMake libraries that defines
# `add_llvm_pass_plugin`.
#set(CMAKE_MODULE_PATH /home/jliu93/csc512/llvm-project/BUILD/lib/cmake/llvm)
set(CMAKE_MODULE_PATH /usr/lib/llvm-17/cmake)
message(STATUS "CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")
foreach(PATH ${CMAKE_MODULE_PATH})

    message(STATUS "Looking in ${PATH}")

    file(GLOB MODULES "${PATH}/*.cmake")
    foreach(MODULE ${MODULES})
        get_filename_component(MODULE_NAME ${MODULE} NAME)
        message(STATUS "Found module: ${MODULE_NAME}")
    endforeach()
endforeach()
include(AddLLVM)

# Use LLVM's preprocessor definitions, include directories, and library search
# paths.
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

# Our pass lives in this subdirectory.
add_subdirectory(skeleton)
