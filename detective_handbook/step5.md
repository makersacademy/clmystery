# `git branch`

Branches in Git allow you to work on several different versions of your working directory at the same time. When you create a new branch and start tracking your changes they'll be saved only in this new branch. At any moment you can switch back to your original (e.g. "master") branch and all your files will be in the same state you left them before "branching out" regardless of the work you've done in the new branch.

The `git branch` command allows you to see branches you have locally. To see all branches including remote ones type `git branch -a`.

# `git checkout`

Use `git checkout BRANCH_NAME` to switch "active" or "current" branch. You can checkout to a new branch even if it's stored in the remote repository. When you do this the branch will be copied to your machine and will be set as "current" branch.
