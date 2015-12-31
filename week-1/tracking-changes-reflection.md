# 1.5 reflections

1. How does tracking and adding changes make developers' lives easier?
  Tracking and adding changes allows for accountability and fallback points.  If multiple people are working on the same project, allowing for a change to be tracked to when and who made it is great for clarifying any confusion as to why or how a code was input. Although, in a perfect world, the message accompanying the change should clarify all of this. Most importantly for developers, it allows fallback points. In case you accidentally introduce a bug into your code, or like a previous version better, you can always go back to that version with relative ease.

2. What is a commit?
  A commit is basically a save point. It takes this collection of changes (modifications, additions, deletions) into one whole bundle, and saves it exactly as this. If you later on mess up your code somehow, you can always go back to this save point, and have working code.

3. What are the best practices for commit messages?
  A commit message should be set up like an email. The first line should be 50 characters or less, provide a short summary of the commit, and start with a capitalized letter. Think of this as the subject line for your email. The reason for this limit is mainly to allow it to display in full on comman line displays.  Than, there should be a blank line, followed by the body. The body should go into much more detail about the changes you made. Commit messages should be written in the imperative. For example  "Add change" instead of "Added change."

4. What does the HEAD^ argument mean?
  HEAD^ simply means the last commit. Expanding on that, HEAD is the current commit, HEAD~3 is the third commit from HEAD, HEAD~4 is the fourth commit from HEAD, etc. I have only seen this argument used for changing a recent commit with the "git reset --soft HEAD^" entry.

5. What are the three stages of a git change and how do you move a file from one stage to the other?
  * Stage 1 is "working". This stage is where you modify, add, and delete parts of the file on a seperate branch. Once you are done working with the file itself, you will save it and move onto Stage 2.
  * Stage 2 is "staged". In this stage you choose which changes should be kept for the commit. It starts with the "git status" command to see what has changed.  The "git add" command is used to officially stage the chosen files.
  * Stage 3 is "commit". All the changes that you added in the last stage are all packaged together and ready to be committed, or saved as a snapshot of the file. Using the "git commit -m" or "git commit -v" to officially commit the files and add a commit message detailing what changed. This is usually followed by a "git log" just to double check everything went through.

6. Write a handy cheatsheet of commands you need to commit your changes.
  * 'git status' - see what changes have been made.
  * 'git add <file>' - stage a file to be committed
  * 'git reset HEAD <file>' - unstage the file. Use this to make changes to the file again. HEAD^, HEAD~3, HEAD~4, etc (instead of HEAD) can be used for previous commits as well.
  * 'git commit -m "Message here"' -use this to commit the changes, and add a message detailing the changes.

7. What is a pull request and how do you create and merge one?
  A pull request is basically how to merge code with the existing master branch.
   1. Commit some changes to a new branch on your own computer with git.
   2. Push this to Github ("git push origin <branch-name>").
   3. Log in to Github in the repository in question. Click the "Compare & pull request" button.
   4. Check the base branch and comparison branch to make sure they are correct.
   5. Write a title and description for your change.
   6. Click create pull request.
  This pull request should be verified by another developer, than merged into the base branch.
   1. Navigate to the pull request.
   2. Double check the changes, and confirm they are acceptable.
   3. Under conversation tab, clicke "Confirm Merge".
   4. Click "Delete branch" to clean up the old branch.

8. Why are pull requests preferred when you are working with teams?
  Pull requests allow the new branch to be verified by a second party before it is merged with the master branch. If all changes are checked by two sets of eyes, it is much less likely for bugs to be accidentally introduced.