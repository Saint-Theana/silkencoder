# CMake generated Testfile for 
# Source directory: /root/packages/cmake-3.15.4/Utilities/cmcurl
# Build directory: /root/packages/cmake-3.15.4/Utilities/cmcurl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(curl "curltest" "http://open.cdash.org/user.php")
set_tests_properties(curl PROPERTIES  _BACKTRACE_TRIPLES "/root/packages/cmake-3.15.4/Utilities/cmcurl/CMakeLists.txt;1295;add_test;/root/packages/cmake-3.15.4/Utilities/cmcurl/CMakeLists.txt;0;")
subdirs("lib")
