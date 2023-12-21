#!/bin/bash

Chon=""

read Chon

if [ $Chon = "N" ]; then
	echo No
elif [ $Chon = "Y" ]; then
	echo Yes
else
	echo What?
fi

