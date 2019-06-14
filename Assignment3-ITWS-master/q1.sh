#!/bin/bash
read scb
q=0
ord=`echo "$scb" | grep -o . | sort | tr -d "\n"`
#$ord"
n=`compgen -c | wc -l`
compgen -c | sort | while read line;
do
	real="$line"
	x=`echo "$line" | grep -o . | sort | tr -d "\n" `
	lcnt=$((lcnt + 1))
	if [ "$ord" = "$x" ]
	then
		p=1
		echo "yes"
		
		echo "$real"
		$real --help
		break
	else
		if [[ "$lcnt" == "$n" ]] && [[ "$p" != 1 ]]
		then
			echo "no"	
			break
		fi
	fi				
done	
		
