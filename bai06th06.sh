#!/bin/bash

a=""
b=""
chon=""

while true
do
echo "CHUONG TRINH BE LAM TOAN"
echo "1 - Be lam toan cong"
echo "2 - Be lam toan tru"
echo "3 - Be lam toan nhan"
echo "4 - Be lam toan chia"
echo "0 - Thoat chuong trinh"

read -p "Ban chon: " chon

if(($chon == 0)); then
	echo "Thoat chuong trinh"
	break
fi

case $chon in
	1)	echo "Nhap 2 so a va b"
		read -p "A = " a
		read -p "B = " b
		sum=$(($a + $b))
		echo "Tong cua hai so da nhap la: $sum"
		;;
	2)	echo "Nhap 2 so a va b"
                read -p "A = " a
                read -p "B = " b
                minus=$(($a - $b))
                echo "Hieu cua hai so da nhap la: $minus"
		;;
	3)	echo "Nhap 2 so a va b"
                read -p "A = " a
                read -p "B = " b
                multi=$(($a * $b))
                echo "Tich cua hai so da nhap la: $multi"
		;;
        4)      echo "Nhap 2 so a va b"
                read -p "A = " a
                while true
		do
                read -p "B = " b
                if(($b == 0)); then
                         echo "Mau khong the bang 0. Vui long nhap lai."
                else
                         break
                fi
		done
                div=$(($a / $b))
                echo "Thuong cua hai so da nhap la: $div"
		;;
	*) 	echo "Khong ton tai chuc nang"
		;;
esac
done
