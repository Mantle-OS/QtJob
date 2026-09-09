cmake_minimum_required(VERSION 3.16)
project(QtJob
    VERSION 0.1
    LANGUAGES CXX
)

set(JOB_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/job")

if(NOT EXISTS "${JOB_SOURCE_DIR}/CMakeLists.txt")
    message(FATAL_ERROR
        "JOB source tree was not found at:\n"
        "  ${JOB_SOURCE_DIR}\n\n"
        "QtJob requires JOB. If this is a Git checkout, initialize the submodule:\n"
        "  git submodule update --init --recursive"
    )
endif()

add_subdirectory(job)


# Qt Build time options and overrrides
include(cmake/build_options.cmake)

## Qt build time deps
include(cmake/build_deps.cmake)

add_subdirectory(libs)
add_subdirectory(apps)

add_custom_target(qtjob_ci SOURCES
    .github/workflows/build.yaml
)
