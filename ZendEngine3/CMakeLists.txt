find_package(PHP REQUIRED)

file(GLOB ZEND_KERNEL_SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.c)

add_library(ZendEngine3 SHARED ${ZEND_KERNEL_SRC_FILES})

target_include_directories(
        ZendEngine3
        PRIVATE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
                $<BUILD_INTERFACE:${PHP_INCLUDE_DIR}>
                $<BUILD_INTERFACE:${PHP_INCLUDE_DIR}/main>)
