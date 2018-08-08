# generate-cmake
Bash script to generate a CMakeLists.txt file.
If a CMakeLists.txt file already exists in the
working directory, it will be overwritten.

1. Takes up to two arguments:
    * `$1` : name of the project
    * `$2` : minimum cmake version required
2. Generates a CMakeLists.txt file based on the provided arguments
    * If no arguments are provided, a generic CMakeLists.txt file is generated with the arguments below
        * `$1 = "myProject"`
        * `$2 = 2.4` 
