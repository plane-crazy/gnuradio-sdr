# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/brock/sdr/gr-bhj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brock/sdr/gr-bhj/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/test-bhj.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/test-bhj.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/test-bhj.dir/flags.make

lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o: lib/CMakeFiles/test-bhj.dir/flags.make
lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o: ../lib/test_bhj.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brock/sdr/gr-bhj/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o"
	cd /home/brock/sdr/gr-bhj/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-bhj.dir/test_bhj.cc.o -c /home/brock/sdr/gr-bhj/lib/test_bhj.cc

lib/CMakeFiles/test-bhj.dir/test_bhj.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-bhj.dir/test_bhj.cc.i"
	cd /home/brock/sdr/gr-bhj/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brock/sdr/gr-bhj/lib/test_bhj.cc > CMakeFiles/test-bhj.dir/test_bhj.cc.i

lib/CMakeFiles/test-bhj.dir/test_bhj.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-bhj.dir/test_bhj.cc.s"
	cd /home/brock/sdr/gr-bhj/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brock/sdr/gr-bhj/lib/test_bhj.cc -o CMakeFiles/test-bhj.dir/test_bhj.cc.s

lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.requires:
.PHONY : lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.requires

lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.provides: lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-bhj.dir/build.make lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.provides

lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.provides.build: lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o

lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o: lib/CMakeFiles/test-bhj.dir/flags.make
lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o: ../lib/qa_bhj.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brock/sdr/gr-bhj/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o"
	cd /home/brock/sdr/gr-bhj/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-bhj.dir/qa_bhj.cc.o -c /home/brock/sdr/gr-bhj/lib/qa_bhj.cc

lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-bhj.dir/qa_bhj.cc.i"
	cd /home/brock/sdr/gr-bhj/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brock/sdr/gr-bhj/lib/qa_bhj.cc > CMakeFiles/test-bhj.dir/qa_bhj.cc.i

lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-bhj.dir/qa_bhj.cc.s"
	cd /home/brock/sdr/gr-bhj/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brock/sdr/gr-bhj/lib/qa_bhj.cc -o CMakeFiles/test-bhj.dir/qa_bhj.cc.s

lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.requires:
.PHONY : lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.requires

lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.provides: lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-bhj.dir/build.make lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.provides

lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.provides.build: lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o

# Object files for target test-bhj
test__bhj_OBJECTS = \
"CMakeFiles/test-bhj.dir/test_bhj.cc.o" \
"CMakeFiles/test-bhj.dir/qa_bhj.cc.o"

# External object files for target test-bhj
test__bhj_EXTERNAL_OBJECTS =

lib/test-bhj: lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o
lib/test-bhj: lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o
lib/test-bhj: lib/CMakeFiles/test-bhj.dir/build.make
lib/test-bhj: /usr/local/lib/libgnuradio-runtime.so
lib/test-bhj: /usr/local/lib/libgnuradio-pmt.so
lib/test-bhj: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-bhj: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-bhj: /usr/lib/x86_64-linux-gnu/libcppunit.so
lib/test-bhj: lib/libgnuradio-bhj.so
lib/test-bhj: /usr/local/lib/libgnuradio-runtime.so
lib/test-bhj: /usr/local/lib/libgnuradio-pmt.so
lib/test-bhj: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-bhj: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-bhj: lib/CMakeFiles/test-bhj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test-bhj"
	cd /home/brock/sdr/gr-bhj/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-bhj.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/test-bhj.dir/build: lib/test-bhj
.PHONY : lib/CMakeFiles/test-bhj.dir/build

lib/CMakeFiles/test-bhj.dir/requires: lib/CMakeFiles/test-bhj.dir/test_bhj.cc.o.requires
lib/CMakeFiles/test-bhj.dir/requires: lib/CMakeFiles/test-bhj.dir/qa_bhj.cc.o.requires
.PHONY : lib/CMakeFiles/test-bhj.dir/requires

lib/CMakeFiles/test-bhj.dir/clean:
	cd /home/brock/sdr/gr-bhj/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/test-bhj.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/test-bhj.dir/clean

lib/CMakeFiles/test-bhj.dir/depend:
	cd /home/brock/sdr/gr-bhj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brock/sdr/gr-bhj /home/brock/sdr/gr-bhj/lib /home/brock/sdr/gr-bhj/build /home/brock/sdr/gr-bhj/build/lib /home/brock/sdr/gr-bhj/build/lib/CMakeFiles/test-bhj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/test-bhj.dir/depend

