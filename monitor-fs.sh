#!/bin/bash
watch -n1 '
echo "=== Disk Usage ==="
df -h | grep -E "temp|persistent|volume"
echo "=== File Stats ==="
find {temp,persistent,volume} -type f 2>/dev/null | xargs ls -lh 2>/dev/null |
awk '\''NR==1{min=max=$5} {if($5<min)min=$5; if($5>max)max=$5} END{print "Min: ",min,"Max: ",max}'\''
'
