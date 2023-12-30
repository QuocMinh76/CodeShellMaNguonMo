#!/bin/bash

if(($# == 0)); then
        echo "Can phai truyen vao ten mot tap tin"
        exit 1
fi

if [ -f "$1" ]; then
        echo "Tap tin $1 da ton tai"
else
        echo "Tap tin $1 khong ton tai"
fi

