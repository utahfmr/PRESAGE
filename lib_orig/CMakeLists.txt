
include_directories(../include)
add_compile_options(-std=c++11)
add_llvm_loadable_module(LLVMPresage MODULE  Presage.cpp 
Slice.cpp)
install(TARGETS LLVMPresage DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
