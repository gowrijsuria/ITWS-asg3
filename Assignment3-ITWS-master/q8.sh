#!/bin/bash
if [[ "$1" == "update" ]]
then
         sed -i "s/.*"$2".*/"$2","$3","$4"/" employee.txt
         echo "Done"
fi
if [[ "$1" == "duplicate" ]]
then
         cat employee.txt |sort |uniq -d
fi
#for writing into file 2 doens
if [[ $1 == "write" ]]
then
			 echo "$2,$3,$4" >> employee.txt
                 echo "Done"
fi
#to delete 
if [[ "$1" == "delete" ]]
then
                sed -i "/^$2,/d" employee.txt
                echo "Done"
fi

if [[ "$1" == "read" ]]
then
		for line in `cat employee.txt`
		do
			if [[ "$2" == "eno" ]]
			then #extra done
				x=`echo $line | cut -d "," -f1`
				if [[ "$x" == "$3" ]]
				then
					echo "$line"
				fi
			fi			
			if [[ "$2" == "ename" ]]
			then 
				y=`echo $line | cut -d "," -f2`
				if [[ "$y" == "$3" ]]
				then
					echo "$line"
				fi
			fi
			
			
			if [[ $2 == "salary" ]]
			then #doen
				z=`echo $line | cut -d "," -f3`
				if [[ $z == $3 ]]
				then
					echo "$line"
				fi
			fi									
		done
fi					
