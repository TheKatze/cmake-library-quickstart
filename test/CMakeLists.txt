# unit tests for the library
INCLUDE(SetupGTest.cmake)

SET(TEST_SRC main.cpp)

ADD_EXECUTABLE(library_test ${TEST_SRC})
TARGET_LINK_LIBRARIES(library_test gtest gmock generic_library)
TARGET_INCLUDE_DIRECTORIES(library_test PUBLIC ${LIBRARY_INCLUDE_DIRS})