#!/bin/bash
# Question 5
analyze() {
	dir="$1"

	if [ ! -d "$dir" ]; then
		echo "directory $dir does not exist"
		return
	fi

	echo "Directory: $dir"
	number_of_files=$(find "$dir" -type f | wc -l)
	echo "Number of files: $number_of_files"

	disk_usage=$(du -sh "$dir" | awk '{print $1}')
	echo "Disk Usage: $disk_usage"

	size=$(du -sk "$dir" | awk {'print $1'})

    	if [ "$size" -lt 102400 ]; then
        	echo "Small"
	elif [ "$size" -lt 1048576 ]; then
        	echo "Medium"
    	else
        	echo "Large"
    	fi
}

if [ "$#" -eq 0 ]; then
	echo "Error: no directory was provided"
	exit 1
fi

for dir in "$@"
do
	analyze "$dir"
done
