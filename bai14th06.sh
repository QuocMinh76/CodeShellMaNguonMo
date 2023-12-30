#!/bin/bash

ten_tm=""

read -p "Nhap ten thu muc: " ten_tm

if [ -d "$ten_tm" ]; then
	echo "Thu muc da ton tai"
else
	mkdir $ten_tm
	echo "Da tao thu muc thanh cong"
fi
