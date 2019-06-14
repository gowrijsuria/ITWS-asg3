#!/bin/bash
data=`echo $1 | tr "(" " " | tr ")" " "|tr -s " "`
o=${data/ /(}
k="$o)"
echo "$k"
