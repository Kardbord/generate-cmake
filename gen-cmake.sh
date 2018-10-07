#!/bin/bash

if [[ $# -eq 1 && ($1 == "-h" || $1 == "--help") ]]; then
    echo -e "
    This script generates a CMakeLists.txt file.
    If the a CMakeLists.txt file already exists, it will be overwritten.\n
    If no arguments are provided, a CMakeLists.txt is generated
    with project name 'myProject' and 2.4 as min cmake version.\n
    Optional Arguments:
    \$1 : name of the project to be associated with CMakeLists.txt
    \$2 : minimum cmake version required\n"
    exit 0
fi

touch CMakeLists.txt

if [ $# -eq 1 ]; then {
        echo "cmake_minimum_required(VERSION 2.4)";
        echo "project($1)";
        echo -e "\n";
        echo "set(CMAKE_CXX_STANDARD 11)";
        echo -e "\n";
        echo "set(SOURCE_FILES main.cpp)";
        echo -e "add_executable($1 \${SOURCE_FILES})"
    }  > CMakeLists.txt
    exit 0
fi

if (( $# > 1 )); then {
        echo "cmake_minimum_required(VERSION $2)";
        echo "project($1)";
        echo -e "\n";
        echo "set(CMAKE_CXX_STANDARD 11)";
        echo -e "\n";
        echo "set(SOURCE_FILES main.cpp)";
        echo -e "add_executable($1 \${SOURCE_FILES})"
    }  > CMakeLists.txt
    exit 0
fi

{
    echo "cmake_minimum_required(VERSION 2.4)";
    echo "project(myProject)";
    echo -e "\n";
    echo "set(CMAKE_CXX_STANDARD 11)";
    echo -e "\n";
    echo "set(SOURCE_FILES main.cpp)";
    echo -e "add_executable(myProject \${SOURCE_FILES})"
} > CMakeLists.txt
exit 0
