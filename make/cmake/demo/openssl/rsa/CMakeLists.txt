cmake_minimum_required(VERSION 3.8)
project(rsa_dgst)

aux_source_directory(. SOURCE_FILES)

execute_process(COMMAND openssl genrsa -out rsa_priv.pem 2048)
execute_process(COMMAND openssl rsa -in rsa_priv.pem -pubout -out rsa_pub.pem)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} -lcrypto)
