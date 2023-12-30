#!/bin/bash

num=""
name=""

read -p "Nhap so luong file muon tao: " num
read -p "Nhap ten file: " name

for((i = 10; i < 10 + $num; i++))
do
	#o day cung co the noi chuoi truoc, roi gan vao bien cho moi vong lap
	touch "$name$i.txt"
done
