cmake_minimum_required(VERSION 2.8)

project(q2.running_threads)

add_compile_options(-std=c++17)

find_package (Threads)

add_executable(${PROJECT_NAME} q2.running_threads.cpp)

target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})

install(TARGETS ${PROJECT_NAME} DESTINATION /)