#!/bin/bash -x

read -p "Enter the yr : " yr

if [[ $yr%4 -eq 0 && $yr%100 -ne 0 || $yr%400 -eq 0 ]]
then
	echo "$yr is leap year"
else
	echo "$yr is not leap year"
fi
