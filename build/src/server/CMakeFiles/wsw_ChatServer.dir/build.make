# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wsw01/my_github/my_byte_talk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wsw01/my_github/my_byte_talk/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/wsw_ChatServer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/server/CMakeFiles/wsw_ChatServer.dir/compiler_depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/wsw_ChatServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/wsw_ChatServer.dir/flags.make

src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/flags.make
src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o: ../src/server/ChatServer.cc
src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wsw01/my_github/my_byte_talk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o -MF CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o.d -o CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o -c /home/wsw01/my_github/my_byte_talk/src/server/ChatServer.cc

src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.i"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wsw01/my_github/my_byte_talk/src/server/ChatServer.cc > CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.i

src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.s"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wsw01/my_github/my_byte_talk/src/server/ChatServer.cc -o CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.s

src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/flags.make
src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o: ../src/server/ChatService.cc
src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wsw01/my_github/my_byte_talk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o -MF CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o.d -o CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o -c /home/wsw01/my_github/my_byte_talk/src/server/ChatService.cc

src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wsw_ChatServer.dir/ChatService.cc.i"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wsw01/my_github/my_byte_talk/src/server/ChatService.cc > CMakeFiles/wsw_ChatServer.dir/ChatService.cc.i

src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wsw_ChatServer.dir/ChatService.cc.s"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wsw01/my_github/my_byte_talk/src/server/ChatService.cc -o CMakeFiles/wsw_ChatServer.dir/ChatService.cc.s

src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/flags.make
src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.o: ../src/server/main.cc
src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wsw01/my_github/my_byte_talk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.o"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.o -MF CMakeFiles/wsw_ChatServer.dir/main.cc.o.d -o CMakeFiles/wsw_ChatServer.dir/main.cc.o -c /home/wsw01/my_github/my_byte_talk/src/server/main.cc

src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wsw_ChatServer.dir/main.cc.i"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wsw01/my_github/my_byte_talk/src/server/main.cc > CMakeFiles/wsw_ChatServer.dir/main.cc.i

src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wsw_ChatServer.dir/main.cc.s"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wsw01/my_github/my_byte_talk/src/server/main.cc -o CMakeFiles/wsw_ChatServer.dir/main.cc.s

src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/flags.make
src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o: ../src/server/db/MySQL.cc
src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wsw01/my_github/my_byte_talk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o -MF CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o.d -o CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o -c /home/wsw01/my_github/my_byte_talk/src/server/db/MySQL.cc

src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.i"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wsw01/my_github/my_byte_talk/src/server/db/MySQL.cc > CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.i

src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.s"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wsw01/my_github/my_byte_talk/src/server/db/MySQL.cc -o CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.s

src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/flags.make
src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o: ../src/server/db/UserModel.cc
src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o: src/server/CMakeFiles/wsw_ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wsw01/my_github/my_byte_talk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o -MF CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o.d -o CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o -c /home/wsw01/my_github/my_byte_talk/src/server/db/UserModel.cc

src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.i"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wsw01/my_github/my_byte_talk/src/server/db/UserModel.cc > CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.i

src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.s"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wsw01/my_github/my_byte_talk/src/server/db/UserModel.cc -o CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.s

# Object files for target wsw_ChatServer
wsw_ChatServer_OBJECTS = \
"CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o" \
"CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o" \
"CMakeFiles/wsw_ChatServer.dir/main.cc.o" \
"CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o" \
"CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o"

# External object files for target wsw_ChatServer
wsw_ChatServer_EXTERNAL_OBJECTS =

../bin/wsw_ChatServer: src/server/CMakeFiles/wsw_ChatServer.dir/ChatServer.cc.o
../bin/wsw_ChatServer: src/server/CMakeFiles/wsw_ChatServer.dir/ChatService.cc.o
../bin/wsw_ChatServer: src/server/CMakeFiles/wsw_ChatServer.dir/main.cc.o
../bin/wsw_ChatServer: src/server/CMakeFiles/wsw_ChatServer.dir/db/MySQL.cc.o
../bin/wsw_ChatServer: src/server/CMakeFiles/wsw_ChatServer.dir/db/UserModel.cc.o
../bin/wsw_ChatServer: src/server/CMakeFiles/wsw_ChatServer.dir/build.make
../bin/wsw_ChatServer: src/server/CMakeFiles/wsw_ChatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wsw01/my_github/my_byte_talk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../../../bin/wsw_ChatServer"
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wsw_ChatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/wsw_ChatServer.dir/build: ../bin/wsw_ChatServer
.PHONY : src/server/CMakeFiles/wsw_ChatServer.dir/build

src/server/CMakeFiles/wsw_ChatServer.dir/clean:
	cd /home/wsw01/my_github/my_byte_talk/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/wsw_ChatServer.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/wsw_ChatServer.dir/clean

src/server/CMakeFiles/wsw_ChatServer.dir/depend:
	cd /home/wsw01/my_github/my_byte_talk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wsw01/my_github/my_byte_talk /home/wsw01/my_github/my_byte_talk/src/server /home/wsw01/my_github/my_byte_talk/build /home/wsw01/my_github/my_byte_talk/build/src/server /home/wsw01/my_github/my_byte_talk/build/src/server/CMakeFiles/wsw_ChatServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/wsw_ChatServer.dir/depend
