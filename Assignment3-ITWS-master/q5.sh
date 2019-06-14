#!/bin/bash
#f1="$1"
#f2="$2"
for i in "${@:3}"
do
	x="$x -k"$i","$i"" 
done
#arx=`echo " ${arr[*]}"`
#echo "${arx[*]"
#echo "${arr[*]}" | tr 
#echo "${arr[*]}"
#n="${#arr}"
#echo "$n"
#for((i=0;i<=n;i++))	
#do
	 cat "$1" "$2" | sort $x -n -s
	  

#done



