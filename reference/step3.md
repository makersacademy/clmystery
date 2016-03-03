# Displaying What You Want (Wildcards)

As our programs get larger and we have to start wading through large numbers of files, the time will come when we want to have more control over how we look at the system. Let's look at a helpful way to do this.

If we look again at the contents of our SomeDir folder, you should see this:

![alt text](https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380904351261_Screen%20Shot%202013-10-04%20at%2017.32.22.png "ls")

We have 1 text file and 6 other files. With only 7 files, finding what we want is pretty easy. But what if we had 7,000 files? Wildcards is the answer.

This is how you'd list just the text files:

`ls *.txt`

The asterisk acts as a wildcard, telling the computer to only show you the files that end in .txt. You can use the wildcard in various scenarios. Take a guess at what each of these do before running them:

`ls new*.txt`
`ls *`
`ls *n*`

And obviously you can use asterisks with any command, not just "ls" because that's the built-in feature of the command-line (or the bash shell, strictly speaking), not of any particular command.

Another way to list specific files is by using the "find" command. It looks like this:

`find . -name "*.txt" -print`

This command works a lot just like normal English. It's saying: "find all files, starting with the current directory, with any name that ends in .txt and print it to the screen." Another cool feature of the "find" command is that, if you have additional directories inside the directory you search in, it will go into those directories as well and continue the search. Therefore, this is how we'd print out every text file in our home directory:

`cd ~`
`find . -name "*.txt" -print`

The first command you already know - to change directories into your home directory. The second command is just using the find command again to tell it to go through and print all text files in the Home directory, plus any other directories inside your home directory.

So, knowing everything that we know now, how could you create a text document that lists out every mp3 file in your Music directory? (Not everyone uses and stores their music the same way, so you may not be able to find any mp3 files on your computer, but you should understand how it works.)

`cd ~/Music`
`find . -name *.mp3 -print > myMusic.txt`
