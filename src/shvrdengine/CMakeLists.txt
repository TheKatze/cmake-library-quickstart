# define the source files of the engine
SET(ENGINE_SRC Container.h Container.cpp)

# create a statically linked library
ADD_LIBRARY(shvrdengine STATIC ${ENGINE_SRC})

# define the libs and includes
TARGET_LINK_LIBRARIES(shvrdengine ${SDL2_LIBRARIES})
TARGET_INCLUDE_DIRECTORIES(shvrdengine PUBLIC {SDL2_INCLUDE_DIRS})
TARGET_COMPILE_OPTIONS(shvrdengine PUBLIC ${SDL2_CFLAGS_OTHER})