# set example files
SET(EXAMPLE_SRC main.cpp)

# add to executable
ADD_EXECUTABLE(shvrdengine_example ${EXAMPLE_SRC})

# add the libs and includes
TARGET_LINK_LIBRARIES(shvrdengine_example shvrdengine)
TARGET_INCLUDE_DIRECTORIES(shvrdengine_example PUBLIC ../shvrdengine)
