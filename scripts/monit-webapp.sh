#!/bin/bash 

curl  --connect-timeout 5 -L http://localhost:9292 2>&1 | grep "Hello" >/dev/null
if [ ${?} -ne 0 ];then
	echo "webapp is down" | mail help@regalii.com -s "webapp monitoring"
fi
