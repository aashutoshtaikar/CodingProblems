# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/batman/Documents/CodingProblems/q4.custom_lock_use

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/batman/Documents/CodingProblems/q4.custom_lock_use/build

# Include any dependencies generated for this target.
include CMakeFiles/q4.custom_lock_use.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/q4.custom_lock_use.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/q4.custom_lock_use.dir/flags.make

CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o: CMakeFiles/q4.custom_lock_use.dir/flags.make
CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o: ../q4.custom_lock_use.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/batman/Documents/CodingProblems/q4.custom_lock_use/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o -c /home/batman/Documents/CodingProblems/q4.custom_lock_use/q4.custom_lock_use.cpp

CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/batman/Documents/CodingProblems/q4.custom_lock_use/q4.custom_lock_use.cpp > CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.i

CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/batman/Documents/CodingProblems/q4.custom_lock_use/q4.custom_lock_use.cpp -o CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.s

CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.requires:

.PHONY : CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.requires

CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.provides: CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.requires
	$(MAKE) -f CMakeFiles/q4.custom_lock_use.dir/build.make CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.provides.build
.PHONY : CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.provides

CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.provides.build: CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o


# Object files for target q4.custom_lock_use
q4_custom_lock_use_OBJECTS = \
"CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o"

# External object files for target q4.custom_lock_use
q4_custom_lock_use_EXTERNAL_OBJECTS =

q4.custom_lock_use: CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o
q4.custom_lock_use: CMakeFiles/q4.custom_lock_use.dir/build.make
q4.custom_lock_use: CMakeFiles/q4.custom_lock_use.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/batman/Documents/CodingProblems/q4.custom_lock_use/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable q4.custom_lock_use"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/q4.custom_lock_use.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/q4.custom_lock_use.dir/build: q4.custom_lock_use

.PHONY : CMakeFiles/q4.custom_lock_use.dir/build

CMakeFiles/q4.custom_lock_use.dir/requires: CMakeFiles/q4.custom_lock_use.dir/q4.custom_lock_use.cpp.o.requires

.PHONY : CMakeFiles/q4.custom_lock_use.dir/requires

CMakeFiles/q4.custom_lock_use.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/q4.custom_lock_use.dir/cmake_clean.cmake
.PHONY : CMakeFiles/q4.custom_lock_use.dir/clean

CMakeFiles/q4.custom_lock_use.dir/depend:
	cd /home/batman/Documents/CodingProblems/q4.custom_lock_use/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/batman/Documents/CodingProblems/q4.custom_lock_use /home/batman/Documents/CodingProblems/q4.custom_lock_use /home/batman/Documents/CodingProblems/q4.custom_lock_use/build /home/batman/Documents/CodingProblems/q4.custom_lock_use/build /home/batman/Documents/CodingProblems/q4.custom_lock_use/build/CMakeFiles/q4.custom_lock_use.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/q4.custom_lock_use.dir/depend
