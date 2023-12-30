#!/bin/bash

filename=""

read -p "Nhap ten file muon tim: " filename

foundfile=$(find / -name $filename 2>/dev/null)

if [ -n "$foundfile" ]; then
        echo "Duong dan cua tap tin $filename la: $foundfile"
else
        echo "Tap tin $filename khong ton tai"
fi

#Mot vai cach khac de tim duong dan voi ten file 
#Path=$(readlink -f $filename)
#Path=$(realpath -s $filename)


