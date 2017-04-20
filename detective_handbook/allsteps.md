# `ls`

The name of the `ls` command stands for "list". If you just type `ls` without arguments the command will list files in the current directory. You can also list files in another directory by calling `ls` with the directory name: `ls mystery/`

# `cd`

`cd` is short for "change directory". Type `cd mystery/` to change current directory to "mystery". To go one level up type `cd ..`. By convention `..` stands for the "parent directory".

# `cat`

`cat FILENAME` is the command you're going to use to view files from the command line. The `cat` command literally means "concatenate" (just a fancy word for "combine") as combining files is its primary purpose, but it is widely used for listing a content of just one file.

# `man`

There will be any number of situations where you'll have a question about what command to use or wonder what a command is truly designed for. Let's see how to handle those situations.

`man ls`

The "man" or "manual" command takes a parameter of another command to provide you more information about it.

Try to use `man` to find out more about `cat`, `ls` and `cd`.
This reference contains only the commands you will need to complete Step 1.

Take some time to read through the [Git walkthrough](./git.md) and make yourself familiar with the important Git concepts.

Use `man git` to see what Git creators have to say about it.

# `git --help COMMAND`

Git has very extensive documentation. To learn more about any Git command type `git --help COMMAND_NAME`.

# `git status`

Git status shows what changes you have made since the last commit. The output of the `git status` command is divided into three sections: changes staged for commit, changes not staged for commit and untracked files.

- Changes staged for commit are the changes that will be added to your next commit unless you specify what else do you want to add.

- Changes not staged for commit will not be committed if you don't add them explicitly.

- Untracked files are the files that you created but haven't yet added to git. Git doesn't track new files automatically because you might not want to add some files to the version control.

# `git add`

`git add` is used for adding changes to the "staging area" - i.e. to mark the changes as something you want to add to the next commit. `git add .` will add all the changes in the working directory to the staging area

# `git commit`

`git commit` is the command to commit all the changes in the staging area to git. Type `git commit -m "COMMIT MESSAGE"` to create a commit with a comment describing what the commit is about.

# `git push`

After you have committed the changes, they still only exist on your machine. To "share" the work you need to push the changes to a remote repository. If you cloned the repository from Github you already have a remote repository setup. When you push your changes they will be pushed to Github. Type `git push` to push your commits.
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
# `head`

`head -N` command will print out first N lines of the file.

# `tail`

`tail -N` is the opposite of `head`. It will print out last N lines of the file.

# `|`

The pipe operator - `|` - allows you to "pipe" or direct the output of one command into the input of another command. For example if you wish to search for "British" in 'kitties.txt' and then search for "Shorthair" in the results of the first search you can use the combination of `grep` and `|`:

`grep British kitties.txt | grep Shorthair`
# `git branch`

Branches in Git allow you to work on several different versions of your working directory at the same time. When you create a new branch and start tracking your changes they'll be saved only in this new branch. At any moment you can switch back to your original (e.g. "master") branch and all your files will be in the same state you left them before "branching out" regardless of the work you've done in the new branch.

The `git branch` command allows you to see branches you have locally. To see all branches including remote ones type `git branch -a`.

# `git checkout`

Use `git checkout BRANCH_NAME` to switch "active" or "current" branch. You can checkout to a new branch even if it's stored in the remote repository. When you do this the branch will be copied to your machine and will be set as "current" branch.
# `grep` with context

`grep -A N SEARCH_STRING` outputs not only the line that contains a match but also N lines after that one.

`grep -B N SEARCH_STRING` is like `-A` but prints out N lines before the line with the match.

`grep -C N SEARCH_STRING` outputs N lines before and after the match string.

Use `man grep` to learn more about `grep` flags.

# Making a pull request on Github

You forked a repo, cloned it to your computer, made some changes committed and pushed them back to Github. Now if you want to submit those changes back to the original repo you would need to make a Pull Request. The maintainers of the original repo can review your changes and decide if they want to merge them.

Refer to the [Github guide](https://help.github.com/articles/creating-a-pull-request/) to learn how to make a pull request.
# `rm`

`rm` is the command for removing files. Type `rm FILENAME` to delete a file permanently. Type `rm -r DIRECTORY_NAME` to remove a directory.

# `git diff`

`git diff` allows you to see changes between any two points in your project. It could be changes between commits, or changes you made since the last commit. Type `git diff` to see the changes since the last commit. Type `git diff COMMIT1..COMMIT2` to see the difference between two commits.

# `git log`

`git log` prints out the commit history in the project. Using `git log` you can find out commit hashes to refer to them later (for example to use them in `git diff`).
# Using `cat` to concatenate files

Type `cat FILE1 FILE2` to print out the content of two files.

# `wc`

`wc` stands for "word count". This command can count words, bytes, characters, lines etc in the input.

`wc FILENAME` will output the number of lines words and bytes in a file. `wc -l FILENAME` will print out the number of lines in the file.

`ls -l . | wc -l` shows the number of entries in the current directory. `ls -l` prints out files and subdirectories as a list, then `wc -l` counts the number of lines in that list resulting in a number equal to the number of files and directories within current directory.

# Permissions

You can control the access to every file on your computer: some files can be read-only, some files can be not available to read to some users, etc. Everyone (a person or a program) using a computer has to identify themselves as some user. You can find out what your name is by using this command:

`whoami`

Every file on a unix-based system has three classes of permissions: "user", "group" and "others". Every class has three permissions: read, write and execute. This allows us to give, for example, read and write access to the owner of the file, only read access to the group it belongs to and no access at all to all other users. Let's discuss classes and permissions in more details.

"User" class determines the permissions that the owner of the file has. Every file on a Unix-like system has some user as an owner. A file can have at most one owner and not more.

"Group" class determines the permissions that apply to a group of user. Any user can belong one or more groups of users (but doesn't have to). For example, if there are several users who access the computer only remotely, they may be organised into a special group that has limited privileges.

"Others" class applies to all users that don't fall into the other two classes.

The "read" permission allows a file to be read. When applied to a directory, it allows to list directory's contents, that is, to see the list of files.

The "write" permission allows to write to a file, or, in case of a directory, it allows creating, deleting and renaming files.

The "execute" permission allows to execute a file. For example, in order to run a program, it must have the "execute" permission to be set. If you create a ruby script, you won't be able to run it directly unless it's executable (has the "execute" permission). We'll see an example later when we'll be discussing something called a "shebang".

If a directory has the "execute" permission, then you can change into it and access files provided that the files' permissions allow this and you know their names. If you don't know their names, you'll need the "read" permissions to find out directory contents first.

In Unix, the permissions are not inherited, so if a directory has a "read" permission, it doesn't imply that the files in it are readable as well.

## Viewing permissions

You can view the permissions by listing the directory in a "long" format.

`ls -l`

This will produce a list of files and some extended information about them.

![alt text](https://dchtm6r471mui.cloudfront.net/hackpad.com_o6W2ogQY8Xc_p.52567_1381137966416_Screen%20Shot%202013-10-07%20at%2010.25.53.png "ls -s")

The permissions are shown in the first column, the mix of hyphens and letters, e.g. "drwxr-x-r-x". This may look cryptic at first sight but is actually very easy to read.

The first letter shows the type of the file. In case of "subDirectory" we know it's a directory and not a file because of the letter "d" in its permissions.  All other files have a hyphen instead of a letter "d", meaning that they are just regular files. There are other types of files as well but these two are most common.

Then come three groups of three characters: "r", "w", "x" or "-". The first group determines the permissions of the "user" class. For example, in case of "subDirectory" in the screenshot above, its permissions ("drwxr-xr-x") mean that the owner of the file (in this case "shadchnev") has read, write and execute permissions ("drwxr-xr-x").

The second group are the permissions for the "group" class, that is, a group of users (in this case "staff"). For "subDirectory" the group only has the read and execute permissions ("drwxr-xr-x"). The hyphen where "w" could be indicated the lack of "write" permission.

Finally, the last three characters are permissions for the "other" class of users.

In the screenshot above, the longText.txt only had read permission for all users, while someFile has write permission for the group of users, unlike all other files.

## Changing permissions

So you know how to view and how to read the permissions of a file but how do you change it? The command responsible for it is called "chmod". For example, to give the user a write permission on a file "readme.txt", you'd do

`chmod u+w readme.txt`

Here, "u" stands for user ("g" for group, "o" for others and "a" for all), "+" means that we're adding the permission ("-" means we're removing it) and "w" stands for "write". You can combine several permissions. For example, to remove read and execute permissions from all users:

`chmod a-rx readme.txt`
