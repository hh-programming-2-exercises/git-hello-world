# Getting started with Git

In this assignment you learn the basics of Git version control. Before starting the assignment, make sure you have [installed the Git tool for your computer](https://git-scm.com/).

## Git command-line tool

The exercise description focuses on the Git command-line tool. Regarding the command-line itself, it is assumed that you are familiar with the [basics](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line). The basic knowledge includes e.g. opening the command-line window, and switching between different directories. If command-line causes problems, you can also solve this and the next exercises using a graphical user interface, such as VS code or GitHub desktop.

* [Command line crash course (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line)
* [Using Git source control in VS Code (code.visualstudio.com)](https://code.visualstudio.com/docs/sourcecontrol/overview)
* [GitHub Desktop (desktop.github.com)](https://desktop.github.com/)

> [!TIP]
> The course instructions assume that you will use a command-line tool, so you will need to independently find the corresponding functions in your own tool.

## Git basics

Git is a very versatile tool, and there are a huge number of different guides and tutorials available for using it. The perspective and content of the tutorials vary quite a bit even for the basics of Git: some create their own repository, while others clone an existing repository. Some create and merge branches, while others work only in a single branch.

In this assignment you'll only need the `clone`, `add`, `commit` and `push` command. You can skip all more advanced topics, such as those related to branches, at least for now. For completing this exercise, we recommend the following sources:

* [What is version control? (Atlassian)](https://www.atlassian.com/git/tutorials/what-is-version-control). Also, check the [video](https://youtu.be/xQujH0ElTUg).
* [What is Git (Atlassian)](https://www.atlassian.com/git/tutorials/what-is-git)
* [Install Git (Atlassian)](https://www.atlassian.com/git/tutorials/install-git)
* [Git add (Atlassian)](https://www.atlassian.com/git/tutorials/saving-changes)
* [Git Cheat Sheet, pdf (GitHub)](https://education.github.com/git-cheat-sheet-education.pdf)

## Exercise

In this exercise, your goal is to download this Git repository to your computer, make a small change to it, and update your change back to the remote repository.

### Cloning a repository

Open the Git Bash application. In Git Bash, like in other command-line tools, commands operate based on the active directory in the application. By default, the active directory is your home directory (`C:\Users\<yourusername>\` on Windows). The `pwd` command will display the current directory you are in (type in the command and press Enter). We can use the [cd](https://en.wikipedia.org/wiki/Cd_(command)) command to switch to other directories. But, we can have our exercise repository directories in the home directory.

Start by cloning this Git repository to your computer using the `git clone` command. The exercise must be done in your own copy, so **make sure that your GitHub username is included in the repository address!** Execute the following command in Git Bash to clone the repository:

```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/programming-2-git-hello-world.git
```

The address can also be found in GitHub by clicking the green "Code" button and copying the address from the dialog.

<img width="954" height="525" alt="p2-clone-repository" src="https://github.com/user-attachments/assets/ade660b9-d2c6-4b82-aeb7-4fbb29d07f8b" />

Once you have cloned the repository to your computer in your chosen directory (the home directory, unless you switch to another directory in Git Bash), open the cloned directory with your code editor. Also, keep the Git Bash open for executing git commands.

> [!TIP]
> Git _clones_ the repository into a directory whose name is by default the same as the name of the repository. The commands in the upcoming sections must be ran inside the directory. So, [switch to the cloned directory using the command-line](https://en.wikipedia.org/wiki/Cd_(command)).

> [!TIP]
> This repository doesn't contain a Java project, but instead a single text file. It will probably look a bit different in your editor compared to "regular" projects.

### Editing files

Open the [hello.txt](./hello.txt) file, which is already inside your repository, with an editor. Add the text `hello world` to the file and save it.

Use the `git status` command and inspect its output. Do you see the `hello.txt` file in the output? What does it say about the file?

### Adding changes

The `hello.txt` file is one you edited locally, and we want to add the latest changes to the version control. This happens in two steps, as described in the document [Git add (Atlassian)](https://www.atlassian.com/git/tutorials/saving-changes).

When you run the `git status` command, it will tell you that the file has changed. Git also gives a hint of a command you can use to add the changes to the version ctonrol:

```sh
git status
git *** hello.txt    # replace the *** with the command provided by the git status command
```

We can change multiple files in a single commit, so we could keep on adding files to the same commit. This time, just having this single file is enough.


### Creating a commit

When we run the `git status` command, Git will show us which files are ready to be commited:

```sh
git status
```

```
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   hello.txt
```

Use the `git commit` command next, which will create a new commit containing the change we made:

```sh
git commit -m "Hello world added to a file"   # replace the commit message of your choice
```

> [!TIP] 
> In the command, the `-m` refers to check the message we use to identify this change in version control later (commit **m**essage).


### Transferring the commits to a remote repository

After creating the commit, run the good old command:

```sh
git status
```

Now, Git tells us that the local copy of the repository is one commit ahead of the remote repository:

```
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git ****" to publish your local commits)
```

Follow Git's instructions and run the command, which transfers the local changes to the remote repository:

```sh
git ****    # replace the **** with the command provided by the git status command
```

Finally, check the changes in GitHub. Make sure that the contents of the `hello.txt` file has been updated.

## Viewing your exercise points

Once you have pushed your solutions to the remote GitHub repository, GitHub will automatically start a GitHub Actions workflow, which will check your solutions and provide either an accepted or rejected result. The check usually takes a few minutes, and the result will be visible in your GitHub repository's ["Actions" tab](../../actions/workflows/grading.yml).

<img width="1216" height="470" alt="GitHub Actions" src="https://github.com/user-attachments/assets/53478e5f-fdf7-443a-aeb4-b5fb06319440" />

By clicking on the latest *"Grading"* execution from the link above, you will get detailed information about the task evaluation. The red cross symbol ❌ on the execution indicates that you don't have the full points yet, whereas the green checkmark ✅ indicates you have the full points. The "Grading summary" section contains your total points and a breakdown of points from each part.

<img width="1051" height="818" alt="Grading" src="https://github.com/user-attachments/assets/edffa801-eaea-4ac9-bef0-1e9decde2e6c" />

## .github, .gitignore ja .gitattributes

This exercise template includes the assignment and an editable file, as well as "hidden files" that start with a dot. If the files are not visible in the directory structure of your code editor, you may need to change your editor's settings.

In the [`.gitignore` file](./.gitignore) we can define, which files are [left outside the version control](https://git-scm.com/docs/gitignore), where as in the [`.gitattributes` file](./.gitattributes) we can define [common line ending characters](https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings) for all text files. You can modify these files to suit your needs in the exercises.

The [.github](./.github) directory contains [GitHub actions](https://github.com/features/actions) configuration and JSON formatted [GitHub classroom](https://education.github.com/) tests, which are used to check your solutions. There should be no need to familiarize yourself with the files while completing the exercises.

## License and authors

This exercise is made by Teemu Havulinna and translated to English by Kalle Ilves and it is licensed under a [Creative Commons BY-NC-SA license](https://creativecommons.org/licenses/by-nc-sa/4.0/).

ChatGPT 3.5 language model and GitHub copilot AI assistant has been used to implement the exercise.
