#!/bin/bash
for i in `seq 23 33`;
do 
curl -X PUT --data 'version='$i https://push.services.mozilla.com/update/Co2pIKCxwi7hIoJqdOC9teUtxUd_fVILPRt4fwCPk55NcoUqtRX1rFcDBgQXKx5VKRqpcD4Oepsr4aKJucb20gFyr5tiVeCcvjdZR6AJAaTwAPtokw==

sleep 6
done

