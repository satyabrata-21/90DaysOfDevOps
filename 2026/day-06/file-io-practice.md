# Creating a file
:) touch notes.txt -> creating a file
# Writing text to a file
:) echo "This is my first line" > notes.txt -> write a line in notes.txt
# Appending new lines
:) echo "This is my second line" >> notes.txt ->Appending new lines
:) echo "This is my third line" | tee -a notes.txt ->Appending 2nd lines 
# Reading the file back
:) cat notes.txt -> Reading a file
:) head -n 2 notes.txt -> to show first 2 lines
:) tail -n 2 notes.txt -> to show last 2 lines

