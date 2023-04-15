# `git branch`

Branches in Git allow you to work on several different versions of your working directory at the same time. When you create a new branch and start tracking your changes they'll be saved only in this new branch. At any moment you can switch back to your original (e.g. "main") branch and all your files will be in the same state you left them before "branching out" regardless of the work you've done in the new branch.

The `git branch` command allows you to see which branches you have locally. To see all branches including remote ones type `git branch -a`.

# `git checkout`

Use `git checkout BRANCH_NAME` to switch "active" or "current" branch. You can checkout to a new branch even if it's stored in the remote repository. When you do this, the branch will be copied to your machine and will be set as "current" branch.

# `git merge`

`git merge` allows you to merge two branches together. E.g. if your current branch is "main" and you type `git merge more-cats` all the changes in the `more-cats` branch will be applied to the "main" branch and a new commit (merge commit) will be created.

`git merge` will open your default command line text editor for you to confirm the merge commit message. Your default editor is likley to be Vim (you can check it by typing `echo $EDITOR`) see the PreCourse [section on Vim](https://makersacademy.teachable.com/courses/256825/lectures/3989204).
