cmake_minimum_required(VERSION 2.8)

add_compile_options(-std=c++17)

project(q3.condition_variable)

add_executable(${PROJECT_NAME} q3.condition_variable.cpp )

find_package (Threads)
target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
