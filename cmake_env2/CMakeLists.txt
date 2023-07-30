
add_executable(app app.c)
target_include_directories(app PRIVATE ${CMAKE_CURRENT_LIST_DIR}/../cmake_env1)
target_link_libraries(app PRIVATE ${CMAKE_CURRENT_LIST_DIR}/../Build/cmake_env1/libfooLib.a)
