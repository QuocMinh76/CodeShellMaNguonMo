#!/bin/bash

n=""
i=0
sum=0

while true
do
read -p "Nhap n: " n
if(($n < 10 || $n > 50)); then
	echo "So n phai nam trong khoang [10;50]"
else
	break
fi
done

while((i <= n))
do
	if((i % 2 != 0)); then
        	sum=$((sum + i))
	fi
        ((i++))
done

echo "Tong cac so le tu 0 den $n la: $sum"


