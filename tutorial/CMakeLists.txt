cmake_minimum_required(VERSION 3.5)

project(tutorial)

add_definitions("-std=c++11")

add_executable(tutorial1 tutorial1.cpp)
add_executable(tutorial2 tutorial2.cpp)

target_link_libraries(tutorial1 statistics)
target_link_libraries(tutorial2 statistics)
