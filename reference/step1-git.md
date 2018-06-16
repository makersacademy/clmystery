This reference contains only the commands you will need to complete Step 1. To learn more about what Git is look into the [./git.md](Git walkthrough). Use `man git` to see what Git creators have to say about it.

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

After you committed the changes they still only exist on your machine. To "share" the work you need to push the changes to a remote repository. If you cloned the repository from Github you already have a remote repository setup. When you push your changes they will be pushed to Github. Type `git push` to push your commits.
