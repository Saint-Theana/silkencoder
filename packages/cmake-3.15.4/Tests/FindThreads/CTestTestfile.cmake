# CMake generated Testfile for 
# Source directory: /root/packages/cmake-3.15.4/Tests/FindThreads
# Build directory: /root/packages/cmake-3.15.4/Tests/FindThreads
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(FindThreads.C-only "/root/packages/cmake-3.15.4/bin/ctest" "--build-and-test" "/root/packages/cmake-3.15.4/Tests/FindThreads/C-only" "/root/packages/cmake-3.15.4/Tests/FindThreads/C-only" "--build-generator" "Unix Makefiles" "--build-project" "FindThreads_C-only" "--build-options" "-DCMAKE_MAKE_PROGRAM:FILEPATH=/usr/bin/make" "--test-command" "/root/packages/cmake-3.15.4/bin/ctest" "-V")
set_tests_properties(FindThreads.C-only PROPERTIES  _BACKTRACE_TRIPLES "/root/packages/cmake-3.15.4/Tests/FindThreads/CMakeLists.txt;2;add_test;/root/packages/cmake-3.15.4/Tests/FindThreads/CMakeLists.txt;0;")
add_test(FindThreads.CXX-only "/root/packages/cmake-3.15.4/bin/ctest" "--build-and-test" "/root/packages/cmake-3.15.4/Tests/FindThreads/CXX-only" "/root/packages/cmake-3.15.4/Tests/FindThreads/CXX-only" "--build-generator" "Unix Makefiles" "--build-project" "FindThreads_CXX-only" "--build-options" "-DCMAKE_MAKE_PROGRAM:FILEPATH=/usr/bin/make" "--test-command" "/root/packages/cmake-3.15.4/bin/ctest" "-V")
set_tests_properties(FindThreads.CXX-only PROPERTIES  _BACKTRACE_TRIPLES "/root/packages/cmake-3.15.4/Tests/FindThreads/CMakeLists.txt;2;add_test;/root/packages/cmake-3.15.4/Tests/FindThreads/CMakeLists.txt;0;")
