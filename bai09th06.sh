#!/bin/bash

a=""
b=""
c=""
max=""

echo "Nhap 3 so a, b, c"
read -p "A = " a
read -p "B = " b
read -p "C = " c

if(($a > $b)); then
	if(($a > $c)); then
		max=$a
	elif(($a < $c)); then
		max=$c
	else
		max=$a
	fi
elif(($a < $b)); then
        if(($b > $c)); then
                max=$b
        elif(($b < $c)); then
                max=$c
        else
                max=$b
	fi
else
        if(($a > $c)); then
                max=$a
        elif(($a < $c)); then
                max=$c
        else
                max=$a
	fi
fi

echo "So lon nhat trong 3 so da nhap la: $max"
