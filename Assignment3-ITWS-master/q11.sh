#!/bin/bash
read type
read n
read -a a
s=${a[0]}
d=${a[0]}
m=1
add=0
case "$type" in		
	"+")
	for((i=0;i<n;i++))
	do
			add=$(echo $add ${a[$i]} | awk '{printf "%0.4f",$1+$2}' )
	done
	echo "scale=4;$add"| bc;;
		
	"-")
	for((i=1;i<n;i++))
	do
		s=$(echo $s ${a[$i]} | awk '{printf "%0.4f",$1-$2}' )	 
	done
	echo "scale=4;$s"| bc;;

	"*")
	for((i=0;i<n;i++))
	do
		m=$(echo $m ${a[$i]} | awk '{printf "%0.4f",$1*$2}' )
	done				
	echo "scale=4;$m"| bc;;

	"/")
	for((i=1;i<n;i++))
	do
		d=$(echo $d  ${a[$i]} | awk '{printf "%0.4f",$1/$2}' ) 
	done
	echo "scale=4;$d"| bc;;
					
esac	

		
