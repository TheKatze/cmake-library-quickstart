# define the source files of the library
SET(LIBRARY_SRC Container.h Container.cpp)

# create a statically linked library
ADD_LIBRARY(generic_library STATIC ${LIBRARY_SRC})

# define the libs and includes
TARGET_LINK_LIBRARIES(generic_library ${SDL2_LIBRARIES})
TARGET_INCLUDE_DIRECTORIES(generic_library PUBLIC {SDL2_INCLUDE_DIRS})
TARGET_COMPILE_OPTIONS(generic_library PUBLIC ${SDL2_CFLAGS_OTHER})