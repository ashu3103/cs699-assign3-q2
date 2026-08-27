#!/bin/bash
# Question 9
echo "" > process_status.txt

if [ $# -ne 1 ]; then
    echo "Error: Provide process name"
    exit 1
fi

pid_tuple=$(ps -aux | grep $1 | head -1)

is_running=$(wc -l <<< "$pid_tuple")

if [ $is_running -eq 0 ]; then
	echo "Process is not running" >> process_status.txt
	exit 1
else
	echo "Process is running" >> process_status.txt
fi

pid=$(awk '{print $2}' <<< "$pid_tuple")
echo "PID: $pid" >> process_status.txt


cpu=$(awk '{print $3}' <<< "$pid_tuple")
echo "CPU Usage: $cpu" >> process_status.txt
mem=$(awk '{print $4}' <<< "$pid_tuple")
echo "Memory Usage: $mem" >> process_status.txt
