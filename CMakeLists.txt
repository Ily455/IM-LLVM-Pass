cmake_minimum_required(VERSION 3.13)
project(ManglePass)

find_package(LLVM REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

add_llvm_library(ManglePass MODULE
  ManglePass.cpp
)

target_include_directories(ManglePass PRIVATE ${LLVM_INCLUDE_DIRS})
target_link_libraries(ManglePass PRIVATE LLVMCore LLVMSupport)
