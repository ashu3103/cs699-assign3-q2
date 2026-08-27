#!/bin/bash
# Question 4
number_of_args=$#
if [[ $number_of_args -lt 1 ]]; then
	echo "Error: Provide a project directory"
	exit 1
fi

project_dir=$1
find $project_dir -type f | rev | cut -d'/' -f1 | rev | sort | uniq -d

