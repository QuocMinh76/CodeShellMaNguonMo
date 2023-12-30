#!/bin/bash

foldername=""
filetype=""

read -p "Nhap ten thu muc: " foldername
read -p "Nhap loai tap tin muon xoa: " filetype

foundfolder=$(find / -name $foldername 2>/dev/null)

if [ -n $foundfolder ]; then
	#Xem lai phan file nay sau (Loi: Xoa het luon loai file do o cac thu muc con)
	#find $foundfolder -name "*.$filetype" -type f -delete
	con="$foundfolder/*.$filetype"
	rm $con
        echo "Da xoa thanh cong tat ca cac file $filetype trong thu muc $foldername"
else
        echo "Thu muc $foldername khong ton tai"
        exit 1
fi


