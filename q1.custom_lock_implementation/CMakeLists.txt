cmake_minimum_required(VERSION 2.8)

project(q1.custom_lock_implementation)

find_package (Threads)

add_executable(${PROJECT_NAME} q1.main.cpp)

target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
