#!/bin/bash

# Improved script to find the largest number, handling non-numeric values and errors.

input_file="numbers.txt"

# Use grep to filter out non-numeric lines
numeric_lines=$(grep "^[0-9]""$input_file")

if [ -z "$numeric_lines" ]; then
  echo "Error: Input file is empty or contains no numeric values."
exit 1
fi

largest_number=0

while IFS= read -r number;
do
  if (( number > largest_number )); then
    largest_number=$number
  fi
done <<< "$numeric_lines"

echo "Largest number: $largest_number"