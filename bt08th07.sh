#!/bin/bash

filename=""

while true
do
	read -p "Nhap ten file txt muon doc noi dung: " filename
	if [[ $filename == *.txt ]]; then
		break
	else
		echo "Khong phai la file txt. Vui long nhap lai"
	fi
done

filefound=$(find / -name $filename 2>/dev/null)

if [ -n "$filefound" ]; then
	echo "Noi dung cua file $filename: "
        cat "$filefound"
else
        echo "File $filename khong ton tai"
fi

