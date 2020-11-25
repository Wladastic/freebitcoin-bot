#!/bin/bash

# infinite loop
echo "starting loop"
while true
do
	echo "Opening freebitcoin, make sure you are logged in."
	DISPLAY=:0 chromium-browser http://freebitco.in &
	pid=$!
	echo "sleeping for 20 minutes..."
	sleep 20m
	echo "kill chromeium"
	kill -15 $pid
done
