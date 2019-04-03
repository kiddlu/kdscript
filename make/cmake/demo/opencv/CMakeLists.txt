cmake_minimum_required(VERSION 3.8)
project(opencv_test)
set(CMAKE_CXX_STANDARD 11)

find_package(opencv REQUIRED)

message(STATUS "opencv include: ${OpenCV_INCLUDE_DIRS}")
message(STATUS "opencv libs: ${OpenCV_LIBRARIES}")

aux_source_directory(. SOURCE_FILES)
message(STATUS "src: ${SOURCE_FILES}")

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBRARIES})
target_link_libraries(${PROJECT_NAME} -lstdc++)
