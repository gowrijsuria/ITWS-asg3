#!/bin/bash
HISTFILE=~/.bash_history
set -o history
file=`awk '{print $1}' ~/.bash_history | sort | uniq -c | sort -rn `
#`paste <(cut -f2 $file) <(cut -f1 $file)`
echo "$file" | while read -r col1 col2
do
  echo $col2 $col1
done 
poe=`history | grep -c "|"`
echo "|" "$poe"

