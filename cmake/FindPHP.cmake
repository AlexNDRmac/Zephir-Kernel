# A module to find PHP headers.
#
# If PHP includes is not installed in a standard path, you can specify the PHP_SRC_DIR
# CMake variable to tell CMake where PHP headers is.
#
# The module defines the following variables:
#
# * PHP_SRC_FOUND:       If false, do not try to include PHP headers
# * PHP_SRC_LIBRARY:     Where to find PHP lib... not needed
# * PHP_SRC_INCLUDE_DIR: Where to find php.h and other header files

unset(PHP_SRC_INCLUDE_DIR CACHE)
unset(PHP_SRC_LIBRARY CACHE)

# TODO: add support for windows
if (UNIX)

    find_path(
        PHP_SRC_INCLUDE_DIR main/php.h
        PATHS ${PHP_SRC_DIR} /usr /usr/local /opt /opt/local
            /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr
        PATH_SUFFIXES php)

endif ()

include(FindPackageHandleStandardArgs)

# handle the QUIETLY and REQUIRED arguments and set PHP_SRC_FOUND to TRUE if all
# listed variables are TRUE
find_package_handle_standard_args(
        ${CMAKE_FIND_PACKAGE_NAME} REQUIRED_VARS PHP_SRC_INCLUDE_DIR)

mark_as_advanced(PHP_SRC_INCLUDE_DIR)