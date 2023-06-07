cmake_minimum_required(VERSION 3.13)
project(myproj)
add_executable(${PROJECT_NAME} main.cpp)
add_subdirectory(src)
add_subdirectory(external/glfw)
target_include_directories(${PROJECT_NAME} 
    PUBLIC external/glfw/include
    PUBLIC src
)
target_link_directories(${PROJECT_NAME} 
    PRIVATE external/glfw/src
    PRIVATE src
)
target_link_libraries(${PROJECT_NAME} glfw mylib)