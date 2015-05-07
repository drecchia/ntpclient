#!/bin/bash 

while (true); do
	/usr/sbin/ntpdate $NTP_SERVER
	echo "Sleeping for $INTERVAL ....."
	sleep $INTERVAL
done
