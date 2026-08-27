#!/bin/bash
# Question 6
echo "" > report.txt
echo "Current Date: $(date)" >> report.txt
echo "User: $(whoami)" >> report.txt
echo "hostname: $(uname)" >> report.txt
echo "current working directory: $(pwd)" >> report.txt
echo "available disk space:" >> report.txt
echo $(df -h) >> report.txt
echo "available memory:" >> report.txt
echo $(free) >> report.txt
echo "system uptime:" >> report.txt
echo $(uptime -p) >> report.txt
