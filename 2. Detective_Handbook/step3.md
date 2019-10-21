# Wildcard

`ls kitties/` prints out all files in the 'kitties' directory. What if you only want to print out txt files? Or files with names starting with "cute_"? To do that you can use asterisk symbol:

`ls kitties/*.txt`

`ls kitties/cute_*`

The asterisk (wildcard) is a "match all" symbol. When you type `ls kitties/cute_*` command line interprets it as "print all the files in the kitties directory that start with 'cute_'". The rest of the name could be anything as `*` matches all possible strings.

# `find`

`find` is a command to find files matching certain criteria. The most common example is finding files by name:

`find . -name "*.txt" -print`

This command works a lot just like normal English. It's saying: "find all files, starting with the current directory, with any name that ends in .txt and print it to the screen." Another cool feature of the "find" command is that, if you have additional directories inside the directory you search in, it will go into those directories as well and continue the search.

# `ls` with flags

`ls -a` prints all files and directories including the ones whose names begin with `.`

`ls -l` prints all files as a list with all the information about files like permissions, owner, last modified time and size.

`ls -h` when used with `-l` option prints file size in a human readable format (Kbytes, Mbytes etc.) instead of bytes.

Flags can be combined. You can type `ls -lah` instead of `ls -l -a -h`.
