cmake_minimum_required(VERSION 2.8)

project(q2.running_threads)

find_package (Threads)

add_executable(${PROJECT_NAME} q2.running_threads.cpp)

target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
