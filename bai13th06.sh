#!/bin/bash

if [ -d "$1" ]; then
        echo "Thu muc da ton tai"
else
        mkdir $1
        echo "Da tao thu muc thanh cong"
fi
