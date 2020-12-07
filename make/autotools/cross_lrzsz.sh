#!/bin/bash
 
CUR_DIR=`pwd`
HOST=arm-linux-gnueabi
BUILD=arm-linux-gnueabi
INSTALL_PREFIX=${CUR_DIR}/lrzsz_out
mkdir -p ${INSTALL_PREFIX}
 
 
echo "ac_cv_prog_CC=${ac_cv_prog_CC='arm-linux-gnueabi-gcc'}" >> arm-linux-gnueabi.cache
 
./configure --prefix=${INSTALL_PREFIX} --host=${HOST} --build=${BUILD} --cache-file=./arm-linux-gnueabi.cache