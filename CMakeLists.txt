cmake_minimum_required(VERSION 3.17)

project(Zephir_Kernel)

set(CMAKE_CXX_STANDARD 11)

# Print the version number of CMake for project
if(CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
    message(STATUS "CMake version: ${CMAKE_VERSION}")
endif()