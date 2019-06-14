#!/bin/bash
read string
n=${#string}
revstr=$(echo $string | rev) 
if [[ ${revstr,,} == ${string,,} ]]
then
	echo Yes
else
	echo No
fi
			
