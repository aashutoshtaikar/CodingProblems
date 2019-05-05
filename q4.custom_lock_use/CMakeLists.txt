cmake_minimum_required(VERSION 2.8)

project(q4.custom_lock_use)
add_compile_options(-std=c++17)

add_executable(${PROJECT_NAME} q4.custom_lock_use.cpp)

find_package (Threads)
target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})

install(TARGETS ${PROJECT_NAME} DESTINATION /)