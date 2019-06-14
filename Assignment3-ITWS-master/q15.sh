#!/bin/bash
wget "$1" "$2" | sed -e 's/<[^>]*>//g' > q15_ans.txt
cat q15_ans.txt | sort | uniq -c
