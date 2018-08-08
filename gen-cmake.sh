#!/bin/bash

if [[ $# -eq 1 && ($1 == "-h" || $1 == "--help") ]]; then
    echo -e "
    This script generates a CMakeLists.txt file.\n
    If no arguments are provided, generates a CMakeLists.txt 
    with project name 'myProject' and 2.4 as min cmake version.\n
    Optional Arguments:
    \$1 : name of the project to be associated with CMakeLists.txt
    \$2 : minimum cmake version required\n"
    exit 0
fi

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
