#!/bin/bash
# Question 7 & 8
echo "" > login_report.txt

if [ $# -ne 1 ]; then
    echo "Error: Provide username"
    exit 1
fi

echo "Currently logged in users:" >> login_report.txt
echo $(who) >> login_report.txt
echo "Login time:" >> login_report.txt
echo $(who | awk '{printf "%-15s %s %s\n", $1, $3, $4}') >> login_report.txt
echo "Number of login users:" >> login_report.txt
echo $(who | wc -l) >> login_report.txt
if who | grep -qw "$1"; then
    echo "$1 is logged in." >> login_report.txt
else
    echo "$1 is not logged in." >> login_report.txt
fi


echo "Last 10 user logins:" >> login_report.txt
echo $(last | head -10) >> login_report.txt

echo "Unique users:" >> login_report.txt
echo $(last | awk '{print $1}' | sort -u | wc -l) >> login_report.txt

echo "recent login:" >> login_report.txt
echo $(last | grep -vE "still logged in" | head) >> login_report.txt

