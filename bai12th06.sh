#!/bin/bash

paragraph=""
filename=""

printf "Nhap vao mot doan van:\n"
while IFS= read -r line; do
	[ -z "$line" ] && break
	paragraph+="$line"$'\n'
done

read -p "Nhap ten file: " filename

echo "$paragraph" > "$filename.txt"

echo "Da luu doan van vao file $filename.txt"
