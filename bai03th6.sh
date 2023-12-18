#!/bin/bash

FullName=""
BirthYear=""
Age=""
Gender=-1
Title=""

read -p "Nhap ho ten: " FullName
while true
do
read -p "Nhap gioi tinh (Nam: 1, Nu: 0): " Gender
if(($Gender == 0 || $Gender == 1)); then
	break
fi
done
read -p "Nhap nam sinh: " BirthYear

let "Age = 2023 - $BirthYear"
if(($Age < 20)); then
	Title="ban"
elif(($Age >= 20 && $Age <= 45)); then
	if(($Gender == 0)); then
		Title="chi"
	else
		Title="anh"
	fi
else
	if(($Gender == 0)); then
                Title="co"
        else
                Title="chu"
        fi
fi

echo "Xin chao $Title $FullName"
echo "Nam nay $Title $Age tuoi"


