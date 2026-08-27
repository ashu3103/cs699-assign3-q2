#!/bin/bash
# Question 3
largest_files=$(du -sh ~/* 2>/dev/null | sort -hr | head -10)
echo "10 largest files inside home directory:"
echo $largest_files
