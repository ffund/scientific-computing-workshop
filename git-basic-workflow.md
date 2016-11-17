# Basic git workflow


If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished the steps on the _front_ of this page, put your 
**green** sticky note on the back of your laptop. 

## Add, commit, push, pull

The basic git workflow involves:

* Making changes to your source code/files
* Adding these changes to your staging area
* Commit the changes in your staging area to your repository 
* Push your changes to a remote server
* Pull changes from the remote server, if necessary

In your terminal, `cd` into the directory in which you cloned your git repository, 
and open the `README.md` file with `nano`:

```
nano README.md
```

Make some changes to this file - for example, you might add a line or two 
of explanation.

At this point, if you run 

```
git status
```

it should show that there are modified files. To add the changes to your staging
area, run

```
git add README.md
```

and to verify, run 

```
git status
```

To actually commit these changes to your repository, use

```
git commit -m "Commit message"
```

Now the changeset is committed to your local repository, but not in your 
remote repository yet. Verify this with 

```
git status
```

To push your changes to the remote repository, run

```
git push origin master
```

and supply your Github username and password when prompted.

When a change exists in the remote repository but not in your local copy, 
you will use `git pull` to get it. Try editing the README.md file directly 
on the Github web interface (the remote); click on the file, then use the pencil
icon to open it in edit mode. Make some changes and commit them from your browser.
Then, in your local repository, run

```
git pull origin master
```

then 

```
cat README.md
```

to verify that you have the latest copy of the file.
