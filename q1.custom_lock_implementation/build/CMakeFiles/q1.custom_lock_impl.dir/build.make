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
CMAKE_SOURCE_DIR = /home/batman/Documents/CodingProblems/q1.custom_lock_implementation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/build

# Include any dependencies generated for this target.
include CMakeFiles/q1.custom_lock_impl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/q1.custom_lock_impl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/q1.custom_lock_impl.dir/flags.make

CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o: CMakeFiles/q1.custom_lock_impl.dir/flags.make
CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o: ../q1.main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/batman/Documents/CodingProblems/q1.custom_lock_implementation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o -c /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/q1.main.cpp

CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/q1.main.cpp > CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.i

CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/q1.main.cpp -o CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.s

CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.requires:

.PHONY : CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.requires

CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.provides: CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.requires
	$(MAKE) -f CMakeFiles/q1.custom_lock_impl.dir/build.make CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.provides.build
.PHONY : CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.provides

CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.provides.build: CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o


# Object files for target q1.custom_lock_impl
q1_custom_lock_impl_OBJECTS = \
"CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o"

# External object files for target q1.custom_lock_impl
q1_custom_lock_impl_EXTERNAL_OBJECTS =

q1.custom_lock_impl: CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o
q1.custom_lock_impl: CMakeFiles/q1.custom_lock_impl.dir/build.make
q1.custom_lock_impl: CMakeFiles/q1.custom_lock_impl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/batman/Documents/CodingProblems/q1.custom_lock_implementation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable q1.custom_lock_impl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/q1.custom_lock_impl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/q1.custom_lock_impl.dir/build: q1.custom_lock_impl

.PHONY : CMakeFiles/q1.custom_lock_impl.dir/build

CMakeFiles/q1.custom_lock_impl.dir/requires: CMakeFiles/q1.custom_lock_impl.dir/q1.main.cpp.o.requires

.PHONY : CMakeFiles/q1.custom_lock_impl.dir/requires

CMakeFiles/q1.custom_lock_impl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/q1.custom_lock_impl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/q1.custom_lock_impl.dir/clean

CMakeFiles/q1.custom_lock_impl.dir/depend:
	cd /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/batman/Documents/CodingProblems/q1.custom_lock_implementation /home/batman/Documents/CodingProblems/q1.custom_lock_implementation /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/build /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/build /home/batman/Documents/CodingProblems/q1.custom_lock_implementation/build/CMakeFiles/q1.custom_lock_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/q1.custom_lock_impl.dir/depend
