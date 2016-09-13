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
