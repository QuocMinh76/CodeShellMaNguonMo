#!/bin/bash

n=""
i=0
sum=0

read -p "Nhap n: " n

while((i <= n))
do
	sum=$((sum + i))
	((i++))
done

echo "Tong cac so tu 0 den $n la: $sum"
