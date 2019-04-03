cmake_minimum_required(VERSION 3.8)
project(opengl_bmp)

aux_source_directory(. SOURCE_FILES)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} -lglut -lGL)
