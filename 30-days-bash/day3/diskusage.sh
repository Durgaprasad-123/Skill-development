## first assign the limit to 80%
##then check the df -hl to see the disk usage and extract the percentage
## now check the percentage with the limit  using if [ "$percentage" -gt= "$limit ];then alert

#!/bin/bash
limit=80
usage=$(df -h /|tail -1|awk '{print $5}'|tr -d "%")
if [[ "$usage" -gt "$limit" ]];then echo "the $limit is exceeded"
else echo "the usage $usage is normal";fi
