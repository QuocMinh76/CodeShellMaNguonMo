#!/bin/bash

a=""
b=""
c=""

echo "Nhap 3 so trong khoang [10, 99]:"
while true
do
read -p "A = " a
if(($a < 10 || $a >99)); then
	echo "Nhap sai! Vui long nhap lai!"
else
	break
fi
done

while true
do
read -p "B = " b
if(($b < 10 || $b >99)); then
        echo "Nhap sai! Vui long nhap lai!"
else
        break
fi
done

while true
do
read -p "C = " c
if(($c < 10 || $c >99)); then
        echo "Nhap sai! Vui long nhap lai!"
else
        break
fi
done

sum=$(($a + $b + $c))

echo "Tong cua ba so da nhap la: $sum"


