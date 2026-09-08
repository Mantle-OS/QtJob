cmake_minimum_required(VERSION 3.16)
project(QtJob
    VERSION 0.1
    LANGUAGES CXX
)

# Build time options and overrrides
include(cmake/build_options.cmake)

## build time deps
include(cmake/build_deps.cmake)

add_subdirectory(libs)
add_subdirectory(apps)
