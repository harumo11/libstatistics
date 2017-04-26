cmake_minimum_required(VERSION 3.5)

project(statistics)

add_definitions("-Wall -std=c++11")

set(SRC_DIR src)
set(INCLUDE_DIR ./include/statistics)
include_directories(${INCLUDE_DIR})

add_library(statistics STATIC statistics.cpp)

install(TARGETS statistics 
	RUNTIME DESTINATION bin
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	)

install(
	DIRECTORY include/statistics 
	DESTINATION /usr/local/include
	)
