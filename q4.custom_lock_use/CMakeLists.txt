cmake_minimum_required(VERSION 2.8)

project(q4.custom_lock_use)

find_package (Threads)

add_executable(${PROJECT_NAME} q4.custom_lock_use.cpp)

target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
