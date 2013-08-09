#!/bin/bash
cat testresults/Registrations.txt | grep Registration: |perl -pe 's/.*(Push\d+\s+Registration:.*)/$1/'  > logcat.txt

for i in `cat logcat.txt | awk '{print $3}'`; do
echo $i
curl -X PUT --data 'version='$1 $i
done
