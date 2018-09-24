# unit tests for the engine

INCLUDE(SetupGTest.cmake)

SET(TEST_SRC main.cpp)

ADD_EXECUTABLE(shvrdengine_test ${TEST_SRC})
TARGET_LINK_LIBRARIES(shvrdengine_test gtest gmock shvrdengine)
TARGET_INCLUDE_DIRECTORIES(shvrdengine_test PUBLIC ${SHVRDENGINE_INCLUDE_DIRS})