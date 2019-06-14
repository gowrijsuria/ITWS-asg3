#!/bin/bash
a=( "$@" )
n=$#
#echo ${a[*]}
while [[ "$i" -lt "$n" ]]
	do
		if [[ "$i" -eq 0 ]]
		then
			k=$(( ${a[$i]} ** ${a[$i+1]} ))
			i=$((i + 2))
		else
			k=$(( k ** ${a[$i]} ))
			i=$(( i + 1))	
		fi	
	done
echo "$k"		

