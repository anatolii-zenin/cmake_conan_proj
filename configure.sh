#! /bin/sh

mkdir build
conan install . --output-folder=build --build=missing
sudo cmake -S . -DCMAKE_TOOLCHAIN_FILE=./build/conan_toolchain.cmake -DGLFW_BUILD_DOCS=OFF -B ./build -DCMAKE_BUILD_TYPE=Release