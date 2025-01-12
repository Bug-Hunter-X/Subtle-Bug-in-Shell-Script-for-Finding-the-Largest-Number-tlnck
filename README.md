# Shell Script Bug: Finding the Largest Number

This repository demonstrates a subtle bug in a shell script designed to find the largest number in a text file.  The script correctly handles positive numbers, but it fails when the input file contains non-numeric values or empty lines. This is because the shell's arithmetic context does not handle these gracefully.  The solution demonstrates a more robust approach.

## Bug

The `bug.sh` script uses a `while` loop and arithmetic context `(( ))` to compare numbers. It fails if any line in `numbers.txt` is not a positive integer. 

## Solution

The `bugSolution.sh` script addresses the bug by using `grep` to filter out non-numeric lines and handling potential errors more gracefully. The approach is safer and more robust.