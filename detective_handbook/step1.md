# Absolute and relative paths

There're two ways of addressing a path from the command line - typing in an absolute path or a relative path.

**Absolute paths** begin with `/`. `/` is a path too. It points to the **root** directory in the filesystem. All other paths start from the root. If your "clmystery" directory sits within your home folder the absolute path to the "clmystery" directory might look like this:

`/Users/johndoe/clmystery`

So change current directory to "mystery" you can type in `cd /Users/johndoe/clmystery/mystery`.

**Relative paths** are paths specified from some other location rather than root folder. For example "mystery" directory can be accessed from the "clmystery" directory by its relative path: `cd ./mystery/` or `cd mystery/`.

`.` in the path refers to the current directory. `..` to the parent directory. If you don't prefix the path with anything (like `cs mystery`) command line will consider this to be a relative path from the current directory.

# `less`

`less` command lets you view a file one screen at a time.

Using the "less" command, you're able to scroll up and down with your keyboard to view the entire document. When you're ready to finish viewing, just type "q"

Use `man less` to learn more about the `less` command.

# `touch`

`touch FILENAME`

The "touch" command creates an empty file with a given name.

# `grep`

The `grep` command allows you to search for a certain word or a phrase within a file. The `grep` command takes two parameters: the first is what you want to search for and the second is what files you want to search through.

`grep Siamese cats.txt`

`grep 'Maine Coon' cats.txt`

Use `man grep` to learn more about how to use `grep`.

# `>`

`>` operator allows you to save the output of a command to a file instead of printing it to a screen. For example with `grep` you can save the results of your search like this:

`grep bengal cats.txt > bengal_cats.txt`

This will override the contents of the "bengal_cats.txt" file with the results of `grep`. To append command output to a file instead use `>>`.
