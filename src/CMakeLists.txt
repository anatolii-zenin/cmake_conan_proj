cmake_minimum_required(VERSION 3.13)
project(mylib)
add_library(${PROJECT_NAME} mylib.cpp)
target_sources(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/mylib.h)