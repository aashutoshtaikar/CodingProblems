cmake_minimum_required(VERSION 2.8)

project(q3.condition_variable)

find_package (Threads)

add_executable(${PROJECT_NAME} q3.condition_variable.cpp)

target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
