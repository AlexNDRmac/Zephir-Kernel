cmake_minimum_required(VERSION 3.17)

project(Zephir_Kernel)

set(CMAKE_CXX_STANDARD 11)

# Print the version number of CMake for project
if(CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
    message(STATUS "CMake version: ${CMAKE_VERSION}")
endif()

# Provide path for additional cmake scripts
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

##############################################
# Project includes
##############################################

include(BuildOptions)

find_package(PHP REQUIRED)

# Add definition for the libraries.
file(GLOB ZEPHIR_KERNEL_SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/kernel/*.c)

add_library(zephir_kernel SHARED ${ZEPHIR_KERNEL_SRC_FILES})

target_include_directories(
        zephir_kernel
        PRIVATE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
                $<BUILD_INTERFACE:${PHP_SRC_INCLUDE_DIR}>
                $<BUILD_INTERFACE:${PHP_SRC_INCLUDE_DIR}/main>)
