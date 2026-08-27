#!/bin/bash
# Question 2
if [[ ! -f "students.csv" ]]; then
	echo "students.csv doesn't exist"
	exit 1
fi

total_lines=$(cat "students.csv" | wc -l)
echo "Total number of lines: $total_lines"
stud_in_cs=$(cat "students.csv" | grep "CSE" | wc -l)
echo "Total number of students in CSE: $stud_in_cs"

stud_in_ee=$(cat "students.csv" | grep "EE" | wc -l)
echo "Total number of students in EE: $stud_in_ee"

echo "Analysis Completed"
