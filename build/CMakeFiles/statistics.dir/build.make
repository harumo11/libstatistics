# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/harumo/program/foundation/libstatistics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/harumo/program/foundation/libstatistics/build

# Include any dependencies generated for this target.
include CMakeFiles/statistics.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/statistics.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/statistics.dir/flags.make

CMakeFiles/statistics.dir/statistics.cpp.o: CMakeFiles/statistics.dir/flags.make
CMakeFiles/statistics.dir/statistics.cpp.o: ../statistics.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/harumo/program/foundation/libstatistics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/statistics.dir/statistics.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/statistics.dir/statistics.cpp.o -c /home/harumo/program/foundation/libstatistics/statistics.cpp

CMakeFiles/statistics.dir/statistics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/statistics.dir/statistics.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/harumo/program/foundation/libstatistics/statistics.cpp > CMakeFiles/statistics.dir/statistics.cpp.i

CMakeFiles/statistics.dir/statistics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/statistics.dir/statistics.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/harumo/program/foundation/libstatistics/statistics.cpp -o CMakeFiles/statistics.dir/statistics.cpp.s

CMakeFiles/statistics.dir/statistics.cpp.o.requires:

.PHONY : CMakeFiles/statistics.dir/statistics.cpp.o.requires

CMakeFiles/statistics.dir/statistics.cpp.o.provides: CMakeFiles/statistics.dir/statistics.cpp.o.requires
	$(MAKE) -f CMakeFiles/statistics.dir/build.make CMakeFiles/statistics.dir/statistics.cpp.o.provides.build
.PHONY : CMakeFiles/statistics.dir/statistics.cpp.o.provides

CMakeFiles/statistics.dir/statistics.cpp.o.provides.build: CMakeFiles/statistics.dir/statistics.cpp.o


# Object files for target statistics
statistics_OBJECTS = \
"CMakeFiles/statistics.dir/statistics.cpp.o"

# External object files for target statistics
statistics_EXTERNAL_OBJECTS =

libstatistics.a: CMakeFiles/statistics.dir/statistics.cpp.o
libstatistics.a: CMakeFiles/statistics.dir/build.make
libstatistics.a: CMakeFiles/statistics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/harumo/program/foundation/libstatistics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libstatistics.a"
	$(CMAKE_COMMAND) -P CMakeFiles/statistics.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/statistics.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/statistics.dir/build: libstatistics.a

.PHONY : CMakeFiles/statistics.dir/build

CMakeFiles/statistics.dir/requires: CMakeFiles/statistics.dir/statistics.cpp.o.requires

.PHONY : CMakeFiles/statistics.dir/requires

CMakeFiles/statistics.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/statistics.dir/cmake_clean.cmake
.PHONY : CMakeFiles/statistics.dir/clean

CMakeFiles/statistics.dir/depend:
	cd /home/harumo/program/foundation/libstatistics/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/harumo/program/foundation/libstatistics /home/harumo/program/foundation/libstatistics /home/harumo/program/foundation/libstatistics/build /home/harumo/program/foundation/libstatistics/build /home/harumo/program/foundation/libstatistics/build/CMakeFiles/statistics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/statistics.dir/depend

