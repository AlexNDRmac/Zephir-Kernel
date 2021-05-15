#find_package(PHP REQUIRED)
#
#file(GLOB ZEND_KERNEL_SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.c)
#
#add_library(kernel SHARED ${ZEND_KERNEL_SRC_FILES})
#
#target_include_directories(
#        kernel
#        PRIVATE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
#                $<BUILD_INTERFACE:${PHP_INCLUDE_DIR}>
#                $<BUILD_INTERFACE:${PHP_INCLUDE_DIR}/main>)
