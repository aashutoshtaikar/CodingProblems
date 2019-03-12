cmake_minimum_required(VERSION 2.8)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

project(q6.memory_pool C)

add_executable(q6.memory_pool
main.c
memory_pool.c
stack.c)

