#!/bin/bash

#if $? = 0 , echo &&
#if $? != 0, echo ||
 [ `cat /etc/sn.txt  |wc -L ` -eq 0 ] && (echo yes) || (echo no)