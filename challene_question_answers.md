# The Command Line Murders
### Step1
1.  ```cat mystery/crimescene ```
2.  Relative paths assume that whatever you are looking for is the same or "relative" path, absolute paths always start at the root or the filesystem.

### Step1-git
1.	To see what changes have been made in the repo using the commad ```git whatchanged```, I like using ```git dff path/to/file ``` or ```git diff commit SHA ``` to see differences between a tracked file or differences between commits. 
2.	```git status ``` will show which files have been modified and which have been "stagged", only staged files get commited.

### Step2
1	The tail utility displays the contents of file or, by default, its standard input, to the standard output. The display begins at a byte.

###Step3 
1.	```$ head -n 40 streets/Hart_Place | tail -1 ``` -> "SEE INTERVIEW #47246024"
2.	```$ head -n 179 streets/Buckingham_Place | tail -1 ``` -> "SEE INTERVIEW #699607"
