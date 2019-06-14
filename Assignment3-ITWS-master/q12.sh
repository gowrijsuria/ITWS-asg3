#!/bin/bash
read wdate
read format

if [[ "$format" == "MM/DD/YYYY" ]]
then	
p=`date -d "$wdate" +%m/%d/%Y`
echo "$p"
fi

if [[ "$format" == "DD-MM-YYYY" ]]
then
k=`date -d "$wdate" +%d-%m-%Y`
echo "$k"
fi

