CMAKE_MINIMUM_REQUIRED(VERSION 3.12)
PROJECT(generic_library)

SET(CMAKE_CXX_STANDARD 17)

# define preprocessor variables for different operating systems
IF(MINGW)
    MESSAGE("Building for Windows using MinGW")
    ADD_COMPILE_DEFINITIONS(BUILD_WINDOWS)
ELSEIF(APPLE)
    MESSAGE("Building for MacOS")
    ADD_COMPILE_DEFINITIONS(BUILD_MACOS)
ELSEIF(UNIX)
    MESSAGE("Building for Linux / Unixlike")
    ADD_COMPILE_DEFINITIONS(BUILD_LINUX)

    # set opengl preference to glvnd
    SET(OpenGL_GL_PREFERENCE GLVND)
ENDIF()

# define filepaths
SET(DEPENDENCIES ${CMAKE_HOME_DIRECTORY}/dependencies)
SET(LIBRARY_INCLUDE_DIRS ${CMAKE_HOME_DIRECTORY}/src)

# load necessary libraries
FIND_PACKAGE(PkgConfig REQUIRED)

# pkgconfig packages
# e.g. PKG_CHECK_MODULES(VULKAN REQUIRED vulkan)

# other packages
INCLUDE(${DEPENDENCIES}/FindGLFW.cmake)

# e.g. INCLUDE(FindOpenGL)

# check if necessary libraries were loaded
IF(NOT ${GLFW_FOUND} OR NOT TRUE)
    MESSAGE("FAILED TO FIND A NECESSARY LIBRARY")
    RETURN()
ENDIF()

# define subdirectories
ADD_SUBDIRECTORY(src)
ADD_SUBDIRECTORY(test)
