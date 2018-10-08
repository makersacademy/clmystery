# Command Line - Introduction

## Mac vs PC

Before we dive into using the command line, it's important to discuss the distinction between using a UNIX-based computer (Mac, any Linux including Ubuntu, etc.) or a PC running Windows. In these lessons, we're assuming you're using a Mac as it's the most common platform among web developers. With the technologies we cover at Makers – a Mac is the tool of choice. If absolutely required, you can use Ubuntu, but you may encounter minor problems along the way that we won't usually cover at Makers. This does not imply that Mac is somehow superior to Linux when it comes to web development. It is simply different, so the instructions provided for a Mac may not always work on a different system.

If you don't have access to either a Mac or Linux machine you may find it easier to work with a cloud hosted solution such as [C9](https://aws.amazon.com/cloud9/?origin=c9io).  This might run a little slower, but the C9 terminal is a good substitute and can be used from PCs and even Chromebooks.

## What is the command line?

So what is the command line exactly? The command line is how we interact directly with the underlying code of our computer. Every computer has some way of accessing the command line. In fact, the command line is the primary interface that your computer uses. The graphical user interface (all the beautiful windows you can open) is just a more accessible way of using your computer that is often but not always available. For example, servers (computers in a data center that host websites etc.) often don't have graphical interface at all, so command line is the only way to work with them.

Using the command line on a Mac is done through the "Terminal" application. You can find it using Spotlight (the built-in search functionality in OSX). Press this combination:

`⌘ + Space Bar`

This will open Spotlight in the upper-right corner of the screen. Search for "Terminal" and scroll down until you find it, select it and hit enter.

The terminal application will open and you'll see something like this:

![Bash command line Image](https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380900937026_Screen%20Shot%202013-10-04%20at%2016.35.09.png "Bash image")

As you can see, it will show you the name of your computer ("Makers Academy laptop") and what directory you're currently in ("Desktop"), followed by the name of the currently logged in user. At the end of the prompt, you'll see a dollar sign ($). This just represents the end of the prompt so if you ever see it used as an example, it doesn't need to be typed in.

Note: you can get something similar at the bottom of the Nitrous Web IDE:


![Nitrous command line](https://www.dropbox.com/s/qdvp81om2571pn7/Screenshot%202014-10-15%2010.45.09.png?dl=1 "Nitrous command line")


Directories in the command line are just a different way to access the directories (or folders) you already have on your computer. So, for example, you can see in the screenshot that I'm currently in the "Desktop" directory. If I were to delete a file that's in that directory from the command line, it will delete it from the user-interface that you're used to using as well.

Don't forget that if you can access the history of your commands by pressing up and down arrows, so if you want to run the command you type a minute ago, just press the up arrow until you see it.

Now that you have the Terminal open, if you are on a Mac, I recommend right clicking on the icon and selecting Options → Keep in Dock. We'll be using the terminal a lot so you want easy access to it.

![alt text](https://dchtm6r471mui.cloudfront.net/hackpad.com_ymW6Sl1t69J_p.52567_1380901047979_Screen%20Shot%202013-10-04%20at%2016.37.09.png "Keep in dock")
