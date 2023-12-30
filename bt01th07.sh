#!/bin/bash

if(($# == 0)); then
	echo "Can phai truyen vao mot doi so"
	exit 1
fi

if [ -d "$1" ]; then
        echo "Thu muc $1 da ton tai"
else
	echo "Thu muc $1 khong ton tai"
fi

