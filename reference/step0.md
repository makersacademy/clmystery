# Listing files

Going back to the directory discussion from earlier, we see that we're in the "Desktop" directory. How do we list all of the contents of this directory?

`ls`

This stands for "list." This command will show everything in the "Desktop" directory:

![alt text](https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380901340878_Screen%20Shot%202013-10-04%20at%2016.42.01.png "ls")

## Listing hidden files (using switches)

Earlier, we listed the public files in the "Desktop" folder - but what if we want to see the hidden files too:

`ls -lA`

This shows us all of the hidden files as well:

![alt text]( https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380901529371_Screen%20Shot%202013-10-04%20at%2016.45.19.png "ls -la")

In addition it shows them in the "long" format, that is, with extra information (size, creation date, owner, etc). The "-lA" parameter is actually a combination of two switches. We could have written the same command like this:

`ls -l -A`

However, if you're specifying multiple switches, you can combine them into one:

`ls -lA `

In this case, "-l" stands for "long format", and "-A" stands for all files.

In the list view the third column shows size of files. To show sizes in a human readable format use `-h` switch.

## Hidden files

Some files are hidden by default because they are used by the operating system and the users don't need to access them in most cases. However, "ls -lA" exists precisely because you'll want to access them on some occasions.

# Changing directories

`cd ..`

The "cd" stands for "change directory" and the ".." tells us to move up to the parent directory. (Just for future reference, a "." represents "the directory I'm in" and ".." represents the parent directory.) Desktop's parent directory is usually the home directory and, as mentioned before, this is connotated by ~

![alt text]( https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380901427436_Screen%20Shot%202013-10-04%20at%2016.43.32.png "cd")

Do you remember how to list out the contents of this directory?

If you guessed "ls" you're correct.

![alt text]( https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380901465155_Screen%20Shot%202013-10-04%20at%2016.44.01.png "ls")

We can return to the "Desktop" directory now by typing:

`cd Desktop`

This is using the same "cd" command from earlier, but instead of telling it to move up to the parent directory by typing ".." we're telling it that we want to "change directory" into the "Desktop" directory. Now we're back in the "Desktop" directory:

![alt text]( https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380901492431_Screen%20Shot%202013-10-04%20at%2016.44.38.png "cd desktop")

# Viewing files

`cat FILENAME` is the command you're going to use to view files from the command line. The `cat` command literally means "concatenate" (just a fancy word for "combine") as combining files is its primary purpose, but it is widely used for listing a content of just one file.

# Getting Help

There will be any number of situations where you'll have a question about what command to use or wonder what a command is truly designed for. Let's see how to handle those situations.

`man ls `

The "man" or "manual" command takes a parameter of another command to provide you more information about it. In the example here, we want to know more about the "ls" command.

![alt text](https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380300031530_Screen%20Shot%202013-09-27%20at%2017.40.15.png "man")

By reading through this, we can find out what all of the parameters are, the description and various other pieces of information for using it correctly.

The square brackets in synopsis mean that the parameter or switch is optional. For example, in case of less, you can omit any switch because all of them are shown in square brackets. The same applies to the file(s) that should be given after the switches: if you specify the directory or file name, it will be listed but if you don't, current directory will be used by default. Finally, three dots at the end of the synopsis mean that you can specify one or more files to list.

Try to use `man` to find out more about the `cat` command.
