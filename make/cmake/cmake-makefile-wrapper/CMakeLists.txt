cmake_minimum_required(VERSION 2.8)
project (cmake-makefile-wrapper C CXX)
add_definitions (
    -D_GNU_SOURCE
)

add_executable(cmake-wrapper-test  ${PROJECT_SOURCE_DIR}/src/test.c)
