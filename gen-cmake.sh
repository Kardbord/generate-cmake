#!/bin/bash

touch CMakeLists.txt

if [ $# -eq 1 ]; then
    echo "cmake_minimum_required(VERSION 2.4)" >> CMakeLists.txt
    echo "project($1)" >> CMakeLists.txt
    echo -e "\n" >> CMakeLists.txt
    echo "set(CMAKE_CXX_STANDARD 11)" >> CMakeLists.txt
    echo -e "\n" >> CMakeLists.txt
    echo "set(SOURCE_FILES main.cpp)" >> CMakeLists.txt
    echo -e "add_executable($1 \${SOURCE_FILES})" >> CMakeLists.txt
    exit 0
fi

if (( $# > 1 )); then
    echo "cmake_minimum_required(VERSION $2)" >> CMakeLists.txt
    echo "project($1)" >> CMakeLists.txt
    echo -e "\n" >> CMakeLists.txt
    echo "set(CMAKE_CXX_STANDARD 11)" >> CMakeLists.txt
    echo -e "\n" >> CMakeLists.txt
    echo "set(SOURCE_FILES main.cpp)" >> CMakeLists.txt
    echo -e "add_executable($1 \${SOURCE_FILES})" >> CMakeLists.txt
    exit 0
fi

echo "cmake_minimum_required(VERSION 2.4)" >> CMakeLists.txt
echo "project(myProject)" >> CMakeLists.txt
echo -e "\n" >> CMakeLists.txt
echo "set(CMAKE_CXX_STANDARD 11)" >> CMakeLists.txt
echo -e "\n" >> CMakeLists.txt
echo "set(SOURCE_FILES main.cpp)" >> CMakeLists.txt
echo -e "add_executable(myProject \${SOURCE_FILES})" >> CMakeLists.txt
exit 0
