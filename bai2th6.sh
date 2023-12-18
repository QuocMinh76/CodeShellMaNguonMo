#!/bin/bash

FullName=""
BirthYear=""
Age=""

read -p "Nhap ho ten: " FullName
read -p "Nhap nam sinh: " BirthYear

let "Age = 2023 - $BirthYear"

echo "Xin chao ban $FullName"
echo "Nam nay ban $Age tuoi"
