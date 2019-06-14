#!/bin/bash
echo "<!DOCTYPE html>" >q14.html
echo "<html>" >>q14.html
echo "<head>" >>q14.html
echo "<title>table</title>" >>q14.html
echo "</head>" >>q14.html
echo "<body>">>q14.html
echo "<table border="3" align="center" >" >>q14.html
for g in `find ~ -type d | grep -ve "./\\."`
do
        echo "<tr><th colspan=3>"$g"</th></tr>" >>q14.html
        echo "<tr><th>Name</th><th>Size</th><th>File/Dir</th></tr>" >>q14.html
        for l in `ls -1 $g`
        do
                size=`du -sh "$l" | cut -f1`
                if [ -d "$l" ]
                then
                        type="dir"
                else
                        type="file"
                fi
                echo "<tr><td>"$l"</td>" >>q14.html
                echo "<td>"$size"</td>" >>q14.html
                echo "<td>"$type"</td>" >>q14.html
                echo "</tr>">>q14.html
        done
done
echo "</table>" >>q14.html
echo "</body>" >>q14.html
echo "</html>" >>q14.html
firefox q14.html

