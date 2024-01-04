#!/bin/bash

path=""

read -p "Nhap duong dan cua file muon doc: " path

if [ -f "$path" ]; then
	echo "Noi dung cua file co duong dan da nhap la: "
	cat "$path"
else
	echo "File khong ton tai hoac duong dan khong dung"
fi
