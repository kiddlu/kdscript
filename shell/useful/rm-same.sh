#!/bin/bash

#set -x

CUR_PATH=`readlink -f $0 | xargs dirname`
UPSTREAM="./upstream"
MOD="./na51089_linux_sdk_glibc_v1.01.000"

for file in $(find $UPSTREAM -type f |  sed "s/^.\/upstream//g")
do
    diff $MOD/$file $UPSTREAM/$file > /dev/null 2>&1
    if [[ $? != 0 ]]; then
	echo $file
	else
    rm -rf $MOD/$file > /dev/null 2>&1
    fi
done

#find $MOD -type d -empty | xargs rm -rf

