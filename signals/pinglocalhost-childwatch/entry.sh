#!/bin/sh
ping localhost &
while true; do
    pgrep ping > /dev/null
    if [[ "$?" -ne "0" ]]; then
        echo "Process not found, exiting..."
        exit 1
    else
    	echo "hello"
        sleep 1
    fi
done

