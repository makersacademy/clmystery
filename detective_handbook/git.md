**Contents**
 - [Introduction](#introduction)
 - [Git](#git)
  - [Setting up Git](#setting-up-git)
  - [Your first git repository](#your-first-git-repository)
  - [Initialising the repository](#initialising-the-repository)
  - [Adding files to the staging area](#adding-files-to-the-staging-area)
  - [Committing Files](#committing-files)
  - [Checking the status](#checking-the-status)
  - [Viewing the log of the changes](#viewing-the-log-of-the-changes)
  - [Removing Files](#removing-files)
  - [Going back in history](#going-back-in-history)
 - [Github](#github)
  - [You Are Your Github Profile](#you-are-your-github-profile)
  - [Git is distributed](#git-is-distributed)
  - [Using Github](#using-github)
  - [Git workflow](#git-workflow)
  - [Pulling the code from Github](#pulling-the-code-from-github)
  - [When and how to commit](#when-and-how-to-commit)
  - [File organisation](#file-organisation)
  - [Cloning repositories from Github](#cloning-repositories-from-github)

# Introduction

Version control is the process and technology used to "control" various "versions" of the code that you write. If, for example, you were building a house, you'd likely start with the foundation and make sure it's solid before you started building the walls. You'd want to stop after the walls were built to make sure everything lined up properly before adding the roof. You wouldn't want to build the entire thing and *realize* after the roof is built that there is a crack in the foundation.

Software version control helps us avoid these problems by allowing us to keep various versions of what we're building. If we *realize* we've made a mistake, wey can revert back to a previous version that we know is solid.

Additionally, version control allows multiple versions to be built simultaneously and then brought together. It doesn't matter whether you're working in a team or writing code alone, version control is something you absolutely need to understand.

## What would version control in real world look like

If our lives were version controlled, we'd be able to travel back in time. Imagine going back to any given day being able to live through the life from that point onwards again?

If you ever make a mistake that you later regret, you can "rollback" the time to before mistake and avoid making it this time.

If you want to see what life was like when you were 10 years old, you can go back in time and then return into present when you're done.

You could even live several lives in parallel! Imagine you decide to rob a bank (not that you should!). Maybe you'll get rich and retire in Monte Carlo. Maybe you'll get caught and spend the next 10 years in jail. In real life you have to make a choice and live through the consequences. With version control you can try both options at the same time and see which one works out best. You can then decide what version you like best (robbing the bank or not) and live it for the rest of your life!

Version control doesn't stop here. What if you decide to do a renovation to your flat? You need to change the floors, paint the ceiling, install a jacuzzi and remove a wall between a living room and the kitchen. Normally, you'd need to do all of that in order: first you remove the wall, then paint the ceiling, then change the floors, then install the jacuzzi, etc. You can't change the floor and paint the ceiling on the same day while removing the wall at the same time. However, with version control you can split the reality into several "parallel" realities and do the work in parallel. In one reality you'll be painting the ceiling, in another – removing the wall, and so on. When all the work is done, you'd "merge" all those realities into one, getting a beautiful renovated flat in a fraction of the time.

It may sound like a science-fiction film but that's actually how version control works. Not using version control is like having time-travel skills and not using them! It's important to know and use version control because it's an awesome developer superpower.


# Git

The most common version control system used by web developers is git. With git you get all of the benefits of controlling various versions of your code and the ability to handle distributed work among a team. [This isn't the only version control software](http://www.infoq.com/articles/dvcs-guide) out there, but it's what a large portion of software developers use and it's what we're going to cover here.

The rest of the tutorial assumed that you have installed git before the start of the course. It comes as part of [Heroku Toolbelt](https://toolbelt.heroku.com/). You can check that it's installed by asking for its version:

````
$ git --version
git version 1.7.12.4 (Apple Git-37)
````

### Setting up git

First thing's first, we need to get git setup on your computer. Open up the Terminal and type the following two commands with your personal information (replace "your name" and "your email" with your information):

```
git config --global user.name "your name"
git config --global user.email "your email"
```

These two commands configure your system for using git. In addition, we'll make a couple of small settings changes with:

```
git config --global core.autocrlf input
git config --global core.safecrlf true
```

Don't worry about what these do exactly as they're just formatting some settings to make things easier later on.


### Your first git repository

Let's create a git *repository* to illustrate how it works. Create a new directory with a small text file named gitText. The text should read "Git is Awesome!" like this:

```
mkdir gitDir
cd gitDir
echo "Git is Awesome" > gitText
```

Now that we have our gitDir directory with a single text file, let's make this directory a git repository.

```
git init
git add gitText
git commit -m "First commit"
```

![Step one](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381242923515_Screen%20Shot%202013-10-08%20at%2015.35.05.png)


Let's break down these commands line by line.


### Initialising the repository


The first command initialises this directory as a git repo - it only has to be done once for every repository.

```
git init
```

A repository is a directory with files that are "under version control". When you run `git init`, git created a hidden directory called .git (with a dot in front) that it uses to track all changes to the files in the directory.

Take special care to not to initialise a top-level directory (e.g. Desktop, your home directory or a directory where you keep several projects) as a git repository. This wouldn't make sense to git and could lead to problems later. You should run `git init` inside the directory where the files for the project you're placing under version control are.

In general, you want to have a directory (and a repo) for every project you're working on: a website, a library, a set of exercises or even a single large exercise. For example, if you're doing a FizzBuzz exercise, it should be in a separate directory (e.g. ~/projects/FizzBuzz) under version control.

If you accidentally initialise a git repo in a folder that shouldn't be under version control, e.g. by running `git init` in ~/Desktop, you can revert the change by removing the hidden .git folder:

```
rm -rf .git
```

So, the first thing we do when we start a new project is to create a directory, change into it and place it under version control by running `git init`.


### Adding files to the staging area


The second line tells the computer to add the gitText file to the staging area (or staging, for short). What is staging area? Isn't git supposed to track all changes automatically?

```
git add gitText
```

Git is mean to act like a time machine, allowing you to go back in time. However, allowing you to travel to an arbitrary moment in time wouldn't make sense. Think about time travel. You may want to go back to yesterday, or yesterday morning, or that specific moment right before you try to rob the bank. However, you wouldn't want to go to any specific second of any of the past years, unless that second was somehow important for some reason.

Tracking every single change would be unnecessary and slow (imagine how much disk space would it take to record every single keystroke of every developer on a large project!). So instead of tracking every change, we must tell git when to create a "checkpoint" (or "commit", in git terminology) that we'll be able to go back in time to.

However, before creating a commit, we need to specify what is being "committed". What if we have a temporary file that we don't want to be saved anywhere long-term? Imagine you're using git to track changes to a novel you're writing. You've finished chapter one and you want to commit it to git, so that you could always go back in time to the moment the first chapter is finished, if you need. However, you also have some random notes for chapter two that you don't want to save just yet (you'll commit them when chapter two starts taking some shape).

So, you'd tell git to only add chapter one to the staging area. The staging area is a special place that git uses to keep track of all files that will be committed on the next step. So even if you have several files that have changed since the last commit (or since the repo was created), you can choose which of them will get committed. So, we're telling git that we're happy with the file as it is now and we'd like to create a "checkpoint" (or commit) that we could go to in case we ever want to.

Even though there's no output from git after you tell it to add a file, unless you see an error message you can assume it went well.

### Committing files

The final line tells us to commit everything in the *staging area*.

```
git commit -m 'First commit'
```

At this point git actually creates a commit, remembering all files that you added to the staging area right now and naming it "First commit" (it's called a commit message). We give it a name so that we could go back to it if we want to.

Remember our science-fiction bank-robbing example? If you could use git for real, you'd want to make a commit right before starting preparing for the heist (in case you make a mistake preparing for it and want to travel back in time to this moment later).

```
git commit -m "About to start preparing for heist"
```

Then you'd commit right before the bank robbery, in case it goes wrong and you want to replay it from that moment in time again and avoid preparing for it again.

```
git commit -m "Ready for the heist"
```

Then, if anything goes wrong at the preparation stage (you forget to buy a balaclava), you can go back in time to the moment when you were "about to start preparing for the heist" and fix the problem before trying the robbery again. If anything goes wrong during the robbery (you accidentally introduce yourself by your real name to the cashier), you can go back in time to the moment when you were "ready for the heist" and avoid the same mistake.

When you commit the file, git tells you what it does:

```
$ git commit -m "First commit"
[master (root-commit) a1833e4] First commit
1 file changed, 1 insertion(+)
create mode 100644 gitText
```

This is what a successful commit message looks like. Git is telling you that it created a commit called "First commit" with a number (or hash, or SHA) a1833e4. One file was changed (gitText), there was one insertion (we put a line of text in it).

So, we're creating a commit called "First commit" indicating that we just initialised a repo in this directory. If we ever need to go to the very beginning, we'll be able to checkout "first commit".


### Checking the status


If you want to see what's going on in your repository, use this:

```
git status
```

This will give you an overview of what files have changed since the last commit. This is what mine shows:

![Step two](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381245384685_Screen%20Shot%202013-10-08%20at%2016.16.13.png)

So, git tells us that there's nothing to commit (working directory clean). The first part (nothing to commit) means that we haven't added anything to the staging area. The second part (working directory clean) means that there is nothing that could be added to the working directory. We haven't made any changes since the last commit, so we can't make another one. A commit is a record of some changes and we haven't made any.

(There's also a mention of something called a "master branch". This refers to one name of the current "reality". Remember we can switch between different realities, or branches? The main one is called "master". We'll get to branches in due time, just ignore it for now).

If we were to make a change such as changing the text of gitText, git would tell us that there's been a change. So, let's make a change a see what the status is again.

![Step three](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381245987544_Screen%20Shot%202013-10-08%20at%2016.25.50.png)

The "git status" command now shows us that we've made a change that isn't staged (that is, added to the staging area).

So, what does this message mean? Let's break it down.

First, it tells us that one file was modified:

```
modified:   gitText
```

That's because we changed some text in it using echo right before running `git status`. Git also tells us that this file isn't staged for commit yet, so if we try to commit right now, nothing will happen.

Git also helps us by telling how to add this file to staging:

```
(use "git add <file>..." to update what will be committed)
```

If you don't want these changes and just want to go back to the version of this file at the time of the last commit, we can do it as well. Git helps us by showing how:

```
(use "git checkout -- <file>..." to discard changes in working directory)
```

Finally, git tells us that there's nothing in the staging area at all:

```
no changes added to commit (use "git add" and/or "git commit -a")
```

Since we've made a change, we should now stage it. After adding it to staging, check git status again:

```
git add gitText
git status
```

It will now show us that we've staged this new file, but it hasn't been *commited* yet.

![Step four](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381246723428_Screen%20Shot%202013-10-08%20at%2016.38.35.png)

If we move on to commit it permanently, we run:

```
git commit -m "Updated gitText"
git status
```

The "git commit" command again commits everything in staging with a short comment about what we've changed. As you can see, everything then is saved and up-to-date.

![Step five](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381247257500_Screen%20Shot%202013-10-08%20at%2016.47.19.png)

It's a good idea to develop the habit of checking git status before you add anything to staging or commit any changes, especially if you suspect something is going wrong. Make sure to run `git status` before you commit, if only to confirm that the repo is in the state you expect it to be.


### Viewing the log of the changes

Finally, if we want to view all of the commits we've made, we run:

```
git log
```

This will list out information about all of the previous commits.

![Step six](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381247504285_Screen%20Shot%202013-10-08%20at%2016.49.02.png)

This gives you the history of all changes, including who made them and when they were made. The long incomprehensible number (56d9881253...) is the unique number of every commit. We need it because the commit messages are not guaranteed to be unique.

### Removing files

For a final example, let's delete the gitText file completely and add another blank file called moreGitText. Then run git status.

```
rm gitText
touch moreGitText
git status
```

As you can see, it shows that moreGitText is not being tracked yet because we haven't staged it and gitText has been deleted.

![Step seven](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381248192309_Screen%20Shot%202013-10-08%20at%2017.03.00.png)

If we now add moreGitText and run git status:

```
git add moreGitText
git status
```

You'll see that moreGitText is staged and ready to be committed, but the deletion of gitText isn't.

![Step eight](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381248217999_Screen%20Shot%202013-10-08%20at%2017.03.26.png)

*This is because even when you delete files, you still need to tell git that you want those changes to be staged*. Think about it for a second. Git is a system that tracks changes. Deleting a file is a change, just like adding a file or modifying it, so it needs to be tracked. If something needs to be tracked, it needs to be added to the staging area. If we created a new file, we add it like this:

```
git add newFile
```

If we remove a file, we can delete it and add this change to staging in one go:

```
git rm newFile
```

So, when we were removing the file, we could use:

```
git rm gitText
```

Let's do it now to tell git that this file is gone and we want to stage the change.

![Step nine](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381248692864_Screen%20Shot%202013-10-08%20at%2017.11.16.png)

Now all we have to do is commit everything from staging and we're back to a clean working directory.

```
git commit -m "deleted gitText"
git status
```

![Step ten](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381248728928_Screen%20Shot%202013-10-08%20at%2017.11.59.png)

Git is an incredibly powerful tool and it can be a bit daunting when you're first introduced to it. We'll cover some more commands and use-case scenarios in future lessons, but know for now that it's here to help your workflow.


### Going back in history

Let's say you want to take a look what gitFile (that doesn't even exist anymore) looked like when we first created it. Let's take a look at the commit log first.

![Step 11](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381248816249_Screen%20Shot%202013-10-08%20at%2017.13.30.png)

So we want to go back to the "first commit". Let's use the commit hash (or SHA) to go to it.

```
git checkout a1833e4ef4a1b
```

![Step 12](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381249076792_Screen%20Shot%202013-10-08%20at%2017.15.36.png)

Note that we're using just the first few characters of the commit hash. You don't have to copy the entire commit hash, just the first few characters will do as long as there is no ambiguity (you have to use at least four, though).

Now git takes us to a "parallel universe" to the time when we just created our "first commit". If you `ls` the directory now, you'll see that the moreGitText doesn't exist yet and gitText still exists (we haven't deleted it yet). Furthermore, gitText contains the text that we put in it right before "first commit".

![Step 13](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381249323435_Screen%20Shot%202013-10-08%20at%2017.21.37.png)

There are ways to take changes from this commit and bring them into the latest version and do many other exciting things but we'll cover them later. Let's just take a look at what our files were at the point of the first commit and go back to the "main" reality (branch) called "master".

```
git checkout master
```

![Step 14](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381249491294_Screen%20Shot%202013-10-08%20at%2017.24.42.png)

By now you should know how to initialise a new repo, stage new files, commit changes, including removed files, and how to take a look at the past version of the code by checking out a specific commit. We'll explore more advanced git features later in the course.


# Github


Making all of these changes on your local computer are great, but we'll need some additional functionality provided by [Github](https://github.com/) to collaborate with other developers and browse code online.

Github does three things. Firstly, it displays git repos in a visual way, so you can look at them online. Secondly, it serves as a common place for open source projects, so if you're using some open source library, the chances are you can find it on Github. Finally, Github provides a set of tools (forking, issues, wiki, etc) to help developers collaborate on projects. If you'd like to see an example Github project, check out [Bootstrap](https://github.com/twbs/bootstrap), [jQuery](https://github.com/jquery/jquery) or [Cocktails for Programmers](https://github.com/the-teacher/cocktails_for_programmers/blob/master/cocktails_for_programers.md).


### You Are Your Github Profile


As a developer, you are your Github profile. When hiring developers, most technology companies will make Github their first stop. If you haven't already signed up, please do so immediately and treat it the same way you would a CV. (i.e. Add a picture, use your real name, etc.) In addition, start using git and Github for all of the code you write from here forward, including simple exercises. Every project. Every time.

The reason for this is that Github shows what you've been doing as a developer. If you're claiming you're a developer and you have little to show on Github, other developers won't take you seriously unless you have an impressive history of projects you worked on. If you're a junior developer, having a decent Github profile helps a lot. For example, this is a real email we received from one of our hiring partners some time ago:

Evgeny S.:
> So, two of your graduates applied for a job with us and we had a good look through their github. To say we're impressed is an understatement.

The first thing that this guy did was to look at everything our graduates created at Github during their time at Makers Academy. Because these students kept their Github profiles in a really good state, they managed to impress him even before coming for an interview.

To sum it up: you are your Github profile. Just putting Makers Academy on your CV achieves nothing. You have to show what you can do in code. Don't worry that you'll be checking in some basic code at first because all developers start with "hello, world". It's much better than having an empty Github.


### Git is distributed


Github is really just another computer somewhere in the USA that you can create a repository on. When you go to Github and press the green button to create a new repository, Github does `git init` on its local computer.

![Step 15](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381334254614_Screen%20Shot%202013-10-09%20at%2016.57.18.png)

So Github's web interface is nothing more but a visual interface to git installed on Github's server.

Git is a [distributed version control system](http://en.wikipedia.org/wiki/Distributed_revision_control). What this means is that there is no such thing as a "central" reposity in git. In other words, all repositories are created equal. It also means that every developer must have a repository on their computer to work on a shared project. If you have a project repository on your laptop and another developer also has a repository for this project on her laptop, these repositories are equal in every respect. Github is just another computer where you can create a repository. Your repositories on Github are not "superior" in any way to your local ones. Normally you'll have a repository on the laptops of all developers, on Github and on the computer where your production website resides (we'll learn how to deploy our code later).

The key feature of git is its ability to copy code between repositories. If you have a local repository and a remote repository on Github, you can copy code in either direction. In the next section we'll see how it's done. You can also move code using git between developers' laptops directly if you wish to.


### Using Github


First, go through [this tutorial to generate SSH keys for Github](https://help.github.com/articles/generating-ssh-keys). 

Note: 
 - If you are using nitrous.io, step 3 will involve printing the contents of id_rsa.pub file to the screen using cat or less and copying the key to your computer's clipboard - you cannot use xclip or pbcopy as nitrous does not include those commands.
 - Please ignore Github's recommendation to download their GUI client. We want to learn how to use Git from the command line.

Second, create a new repository by clicking the large green "New repository" button on Github's homepage (you must be logged in). Call this repository 'playing-with-git'.

![Step 16](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381335055212_Screen%20Shot%202013-10-09%20at%2017.10.44.png)

Make it public, so that others could see it. Unless you have a good reason to keep the code private, make it public. Don't initialise it with a README file.

At this point Github runs `git init` somewhere on their computer. After you do this, you'll see an empty repository.

![Step 17](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381335315204_Screen%20Shot%202013-10-09%20at%2017.14.59.png)

This means that you have a remote repository but it's empty. Github shows us the steps required for a new repository and for an existing one. Since we already have a local repository, we have to do only two steps.

The first one is to connect our two repositories together. Right now you have two git repositories: one locally and one on Github but they don't "know" of each other. So, we need to connect them first.

Connecting two repositories is done by creating something called a "remote". A remote is simply a record in a local repository that it's linked to another one. Let's take a look at the current list of the remotes for your local git repo.

![Step 18](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381335581070_Screen%20Shot%202013-10-09%20at%2017.19.33.png)

Typing `git remote -v` gives no output, meaning that you have no remotes set up. Let's set one up. Type this:

```
git remote add origin git@github.com:makersacademy/playing-with-git.git
```

You'll need to replace the address of the repository (*git@github.com:makersacademy*/playing-with-git.git) with the one Github gives you. This command adds a remote called "origin" with the given address to your local repo.

Why is it called origin? It's just a convention. You can call it whatever you want but if you're using one repository to store the code remotely (and coordinate the work of several *devs*, if part of a team), it's a convention among developers to call it "origin".

Check the list of your remotes now:

![Step 19](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381335853408_Screen%20Shot%202013-10-09%20at%2017.23.54.png)

Cool. Now your local repository knows that it's "linked" to another repository somewhere on github.com. Note that no real connection is established yet. You could have added a remote while being offline. The only thing this command does is modifying a .git/config file.

![Step 20](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381336089702_Screen%20Shot%202013-10-09%20at%2017.28.02.png)

Next we'll need to transfer the code from the local repository to the one on Github (called "origin"). This operation is called a "push". Do this:

```
git push -u origin master
```

You should see this output.

![Step 21](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381336390806_Screen%20Shot%202013-10-09%20at%2017.32.52.png)

This means that the push went well. Let's break this command down:

```
git push -u origin master
```

It tells git to push your code from your local repository (it's implied) to a repository called origin (that's the name of the remote that we just added). The last bit, "master", means that we're pushing the branch called "master" (the only branch we have right now). We haven't discussed branches yet, so don't worry about it. The "-u" switch means that these parameters should be saved as default, so next time you won't have to type "origin master". You'll be able to simply do

```
git push
```

Try it now. Git will tell you that everything is up to date. This means that there are no local changes that haven't been pushed yet to Github.

Ok, let's now take a look at Github. Just refresh the page. You'll see the same content you have locally.

![Step 22](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381336762893_Screen%20Shot%202013-10-09%20at%2017.39.13.png)

If you click on "3 commits" link, you'll see the same history you see when you type `git log` locally. Click around: you'll see the changes that were done on every step.

![Step 23](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381336812363_Screen%20Shot%202013-10-09%20at%2017.40.03.png)

Compare it to the local version.

![Step 24](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381336834219_Screen%20Shot%202013-10-09%20at%2017.40.27.png)

So now you have two repositories, one locally and one on Github, that have the same commits. Now you can afford to lose your laptop: you'll be able to get your code from Github if something happens.


### Git workflow


So, let's sum up the steps we've done so far:

1. We created a folder for a new project
2. We initialised a repository inside it
3. We created some files
4. We added them to the staging area
5. We committed them
6. We created a repo on Github
7. We created a remote called "origin" pointing to Github
8. We pushed the code to the origin


Whenever you are starting work on a new project, follow these steps. Create a new repository (actually, it doesn't matter where to create it first: you can try creating it first on Github and then locally). Create a remote pointing to Github. Commit a few changes, push them to Github from time to time.

You need to be in the directory where the repository is in order to push your data to Github. When you do `git push` or a similar command git applies it to the directory you are in, so if you're in a wrong directory you won't get the results you expect.

![Everything is local](/pills/images/git_everthing_is_local.png)

### Pulling the code from Github


By now you know how to create a repo locally and push your local code to Github. You also need to know how to get your code back from Github. Let's say you and one other developer work on a website together. You both have local repos and a Github repository that you both have added as a remote called "origin". Your colleague made some changes to the website and pushed them to Github. How do you get them? You need to "pull" them:

```
git pull origin master
```

This command tells git to get all the latest commits from origin and copy them into your local repository. Try pulling the changes now. Nothing will happen because there are no remote changes.

![Step 25](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340415375_Screen%20Shot%202013-10-09%20at%2018.40.08.png)

Let's make a remote change. We'll use Github UI for this but normally this would happen because someone else pushed new code.

Go to your git repo and click on moreGitText file:

![Step 27](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340516535_Screen%20Shot%202013-10-09%20at%2018.41.42.png)

There is an edit button there. Add some text

![Step 28](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340579666_Screen%20Shot%202013-10-09%20at%2018.42.50.png)

and then scroll down and commit it. Behind the scenes Github will do `git add` and `git commit` for you.

![Step 29](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340626565_Screen%20Shot%202013-10-09%20at%2018.43.40.png)

This will create a new commit. Go back to the repository main page and click "4 commits".

![Step 30](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340685224_Screen%20Shot%202013-10-09%20at%2018.44.39.png)

You will see the commit you've just done there. However, this change isn't reflected locally yet. Do `git log` in your local repo.

![Step 31](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340765344_Screen%20Shot%202013-10-09%20at%2018.45.58.png)

This is because we haven't pulled the changes yet. Let's get the latest changes from Github. You don't have to type the full `git pull origin master` command if you've done `git push -u origin master` before because the "-u" flag would save "origin master" parameters as default ones, so we can just do:

```
git pull
```

![Step 32](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340883981_Screen%20Shot%202013-10-09%20at%2018.47.50.png)

This is what a successful pull looks like. You can verify that you've got the changes by looking at the log and looking at the file.

![Step 33](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381340982104_Screen%20Shot%202013-10-09%20at%2018.49.33.png)


### When and how to commit


A good rule of thumb is "commit early, commit often". Whenever you make a meaningful change, make a commit. You don't have to push it to Github straight away: you can make several commits and then push them in one go.


Make a commit when you've done a meaningful piece of work. Ideally, your commit log should document the development of the project. For example:

- Initial commit (added a README file)
- Added an empty web page
- Put a welcome message on the page
- Added a header with a logo
- Added a footer with a few links
- Added /contact-us page

and so on and so forth (in reality it'll be more detailed and technical). Read [the commit messages of the jQuery project](https://github.com/jquery/jquery/commits/master) to get an idea of what they should look like in real life.


### File organisation


You already know that you should have a separate directory initialised as a git repo for every project. It's convenient to have a separate directory for all projects you'll have. For example, you can create a Projects directory in your home directory:

```
mkdir ~/Projects
```

Then when you need to start a new project, create a new folder inside it

```
cd ~/Projects
mkdir ruby-practice
cd ruby-practice
```

Then initialise it and add a README file

```
git init
echo "Introductory Ruby exercises" > README
git add README
git commit -m "Initial commit"
```

If you then need to work with another project you created before, move to that directory.

```
cd ~/Projects/command-line-practice
```

and then do the same there: some changes, commits and pushes to github.


### Cloning repositories from Github


So far we've learned how to create our own repository and put it on Github. Now let's get someone else's repository from Github. This process is called "cloning" because the command that does this is `git clone`.

Let's clone [this repository](https://github.com/JoshCheek/ruby-kickstart). It contains lots of Ruby lessons that you may find useful.

First, navigate to your projects directory that we created earlier. Let's say it is ~/Projects.

```
cd ~/Projects
```

Then open [the Github repository](https://github.com/JoshCheek/ruby-kickstart) in your browser. On the right there will be a box with a "clone url".

![Step 34](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381397446815_JoshCheek%20ruby%20kickstart.png)

Copy it by clicking the button next to the url. Now use it in the command line:

![Step 35](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381397626330_Screen%20Shot%202013-10-10%20at%2010.33.35.png)

Now you have a "ruby-kickstart" folder in your project directory. You can go in there and take a look at a few Ruby exercises.

![Step 36](https://dchtm6r471mui.cloudfront.net/hackpad.com_mKMM4CQ89LW_p.52567_1381397808252_Screen%20Shot%202013-10-10%20at%2010.36.27.png)

So, what has just happened? `git clone` is just a shortcut for several commands you already know. When you typed:

```
git clone https://github.com/JoshCheek/ruby-kickstart.git
```

git did the equivalent of the following:

```
mkdir ruby-kickstart
cd ruby-kickstart
git init
git remote add origin https://github.com/JoshCheek/ruby-kickstart.git
git pull
cd ..
```

Nothing new here. We just created a new local repo, added a remote and pulled the changes. No magic.

A common mistake is to forget that `git clone` created a folder for you. You need to run `git clone` in your projects folder, not the folder you want the repo files to be in.
