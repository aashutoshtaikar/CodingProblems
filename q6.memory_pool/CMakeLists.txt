cmake_minimum_required(VERSION 2.8)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

project(q6.memory_pool C)

add_executable(${PROJECT_NAME}
main.c
memory_pool.c
stack.c)

install(TARGETS ${PROJECT_NAME} DESTINATION /)

