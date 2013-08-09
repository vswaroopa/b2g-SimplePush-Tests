#!/bin/bash 
endPointURL=`adb logcat -d | grep Registration: | sed 's/.*Registration: //' | sort -u`
echo $endPointURL
curl -X PUT --data 'version=150' $endPointURL
sleep 10 
newVersion=`adb logcat -d | grep version: | perl -pe 's/.*version:\s*(\d+).*/\$1/'`
echo "arg$1"
echo "$newVersion hello"
if [ "$newVersion" -eq "150" ]; then
  echo 'versionUpdate successful'
else
	echo 'version update failed'
fi
