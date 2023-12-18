#!/bin/bash

if [ $# -lt 3 ]; then
	echo "Can 3 tham so"
	return 1 2>/dev/null
	exit 1
fi

sum=$(($1 + $2 + $3))

echo "Tong cua ba so la: $sum"
