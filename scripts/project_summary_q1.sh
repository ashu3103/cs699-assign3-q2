#!/bin/bash
#  Question-1
project_dir=$(pwd)
echo $project_dir
if [ -d $project_dir ]; then
	echo "Directory Exists"
else
	echo "Directory doesn't exist"
	exit 1
fi

total_files=$(find $project_dir -type f | wc -l)
echo "Total number of files: $total_files"

total_disk_usage=$(du -sh)
echo "Total Disk Usage: $total_disk_usage"

tf=$(ls -l | wc -l)
echo "File names sorted by modification time:" 
ls -lt | tail -n $((tf - 1))

echo "Analysis Complete"

