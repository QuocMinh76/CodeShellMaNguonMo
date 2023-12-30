#!/bin/bash

foldername=""

read -p "Nhap ten thu muc: " foldername

foundfolder=$(find / -name $foldername 2>/dev/null)

if [ -n $foundfolder ]; then
	echo "Nhung file nam trong thu muc $foldername la:"
	sudo ls -p $foundfolder | grep -v '/'
else
	echo "Thu muc $foldername khong ton tai"
	exit 1
fi

