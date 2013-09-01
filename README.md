listComare
==========

Compares two files and creates a merged output with two columns indicating which of the files contain each row.

Usage
=====

./listCompare.pl file1.txt file2.txt > merged.txt

The "merged.txt" file continas three columns:
1. row data
2. true/false on whether the row was in file1.txt
3. true/false on whether the row was in file2.txt

