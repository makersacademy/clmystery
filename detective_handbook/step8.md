# Using `cat` to concatenate files

Type `cat FILE1 FILE2` to print out the content of two files.

# `wc`

`wc` stands for "word count". This command can count words, bytes, characters, lines etc in the input.

`wc FILENAME` will output the number of lines words and bytes in a file. `wc -l FILENAME` will print out the number of lines in the file.

`ls -l . | wc -l` shows the number of entries in the current directory. `ls -l` prints out files and subdirectories as a list, then `wc -l` counts the number of lines in that list resulting in a number equal to the number of files and directories within current directory.

