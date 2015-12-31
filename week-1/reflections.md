# 1.1 Think About Time Reflection

* I did some research on a few different types of time management. My favorite was getting in the "flow".  This seems like it was created by a perfect storm of a few factors. Mainly, you must have no distractions, set realistic goals, get some affirmation that your goal was achieved, and find something challenging enough to keep you interested, but not wear you out. If you stick with these, you will eventually hit that point of "flow" where you lose track of time and are absorbed in your work.
* "Time boxing" is creating very specific spans of time to work on a project. For example, the Pomodoro method of time boxing is 25 minutes of work, followed by a 5 minute break. "Time boxing" basically allows you to work hard at something for a set time, than evaluate what was actually achieved. I can easily use this in phase 0 to budget my time. Make sure I am moving at a correct pace and get a great idea of how long each task takes me.
* Currently, I honestly do not do much to manage my time.  I did ahead on section and try a few of the other tasks that were assigned, and have been playing with a few of the ideas.
* I am currently employing kind of a hybrid plan of getting in the flow, and "time boxing".  It really started as "time boxing", but I have realized when I am not constantly looking at the clock, and trusting my timer, I tend to accidentally fall into this zone. If the end of my "time box" happens while I am in the middle of an assignment, I don't even want to stop due to being in the zone, so I just restart the timer and power right through.
* My plan for phase 0 is to continue what I worked with today. Doing a "time boxing" strategy to get me in the flow.  It seems to be working wonderfully so far. I have been doing 1 hour time boxes, and listening to nature sounds on headphones to stop myself from getting distracted.

# 1.2 The Command Line Reflection

1. Shell is an interface to interact and access the operating system.  Bash is just one of the many shells available. This is one of the most widely used and seems to be what we will always be working with. Bash is an acronym for "Bourne again shell" after the Bourne shell before it.

2. The toughest part for me was simply memorization. Trying to get all the different commands to stick in my head without looking them up took a while, but , like the crash course mentioned, lots of time with flash cards seemed to be the best way to do this.

3. I was eventually able to use all the commands,  although some took a little trial and error with exact syntax.

4. Navigation seems to be the most important, as those would probably be the most used. Things like changing the directory, printing the working directory, and listing directories I can see being used a lot.

5.

  * pwd - print working directory. This simply prints what directory you are currently in and all the parent directories.
  * ls - list directories. This command give a list of all directories in the current working directory
  * mv - move directory. This is can either move a file to a new directory or rename a file.
  * cd - change directory.  This will change the directory you are in to whatever argument you follow it with.
  * ../ - parent directory.  This is an argument you can use to go the parent directory of the working directory.
  * touch - create empty file and change modification/access time.  This command can be used to create a new empty file (if one by the arguments name does not already exist) .  It will also change the modification and access time to the current time in existing and new files.
  * mkdir - makes a directory. Will make a directory with the name of the argument you input in the working directory.
  * less - allows you to read a file one page at a time. It also does not need to load the entire file before starting, so it can be a little faster for working with big files.
  * rmdir - removes a directory.  As simple as deleting a directory.
  * rm - removes a file.  Can not remove directories.
  * help - give some information on commands.  This is a built in command for bash, and seems to fit a similar use as man.  In the few commands that I have searched for, man seemed to have information on it more often than help.

# 1.4 Forking and Cloning Reflection

## Creating a new repo

Login into Github at www.github.com (Links to an external site.) (Links to an external site.)
Click the plus sign on the top right corner (next to your avatar)
On the drop down menu, click "New repository"
Now, choose a name, set to public, and choose MIT License
Click "Create repository" at the bottom of the page

## Forking a repo

Find the target repository on Github.com
Click on the fork in the upper right hand corner (under your avatar)
A pop up window will ask where you want to fork the repository. Click on your own avatar.

## Cloning a repo

Copy the HTTPS link located near the top of the screen
In terminal, find the directory you want to clone the repository to
type "git clone https://github.com/linkinfo.git" but with your link pasted instead of mine

Forking a repository allows you to make changes to a project without potentially adversely affecting the original project. This fork will still be linked to the original, and , after sufficient testing, can be remerged with the original. It would be much more difficult to merge a new project into the original. With forking, you can also use the copied project for your own projects, modified or not (depending on license of course).

I struggled a bit with the command line while setting up git. I set up git before going through the command line lesson in this section, so I had little idea what I was doing. It was easy to do, since the instructions are very clear, but I struggled to understand what I was doing. Now that I have a bit more knowledge, that part would have been much easier to understand.