cmake_minimum_required(VERSION 3.22.1)
project(myproj VERSION 1.0)
configure_file(myprojConfig.h.in myprojConfig.h)
add_executable(${PROJECT_NAME} main.cpp)
add_subdirectory(src)
find_package(glfw NAMES glfw3 REQUIRED)
target_include_directories(${PROJECT_NAME}
    PRIVATE src
    PUBLIC ${PROJECT_BINARY_DIR}
)
target_link_directories(${PROJECT_NAME}
    PRIVATE src
)
target_link_libraries(${PROJECT_NAME} glfw mylib)