# `head`

`head -N` command will print out first N lines of the file.

# `tail`

`tail -N` is the opposite of `head`. It will print out last N lines of the file.

# `|`

The pipe operator - `|` - allows you to "pipe" or direct the output of one command into the input of another command. For example if you wish to search for "British" in 'kitties.txt' and then search for "Shorthair" in the results of the first search you can use the combination of `grep` and `|`:

`grep British kitties.txt | grep Shorthair`
