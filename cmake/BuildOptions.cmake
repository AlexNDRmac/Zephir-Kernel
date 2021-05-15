# Processors count for Cmake/Make parallel jobs
include(ProcessorCount)

ProcessorCount(N)
if(NOT N EQUAL 0)
    set(BUILD_JOBS ${N})
    message(STATUS
            "Build options: Set processor count to: ${N}")
else()
    message(WARNING
            "There is a problem to determine CPU count. Set fallback to: 2")
    set(BUILD_JOBS 2)
endif()