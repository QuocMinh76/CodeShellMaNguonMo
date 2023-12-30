#!/bin/bash

filename=""

while true
do
	read -p "Nhap ten tap tin muon tim: " filename
	if [[ ! $filename == *.* ]]; then
		echo "Vui long nhap phan mo rong cua tap tin (VD: .txt, .sh, etc)"
	else
		break
	fi
done

foundfile=$(find / -name $filename 2>/dev/null)

if [ -n "$foundfile" ]; then
        echo "Duong dan cua tap tin $filename la: $foundfile"
else
        echo "Tap tin $filename khong ton tai"
fi


