cmake_minimum_required(VERSION 2.8)

project(q5.platform_dispatcher)
include_directories( ${CMAKE_SOURCE_DIR}/include )

#find_package (Threads)

add_executable(${PROJECT_NAME} q5.platform_dispatcher.cpp)

#target_link_libraries (${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
