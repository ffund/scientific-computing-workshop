# Resolving conflicts

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished the steps on _both_ sides of this page, put your 
**green** sticky note on the back of your laptop.                               

## What causes conflicts?

Version control systems need some way to deal with conflicts - figuring out 
what to do when multiple versions of a file exist. Some prevent conflicts
by only allowing one user to have "write" access to a file at a time. Some 
just save many versions of the file with different filenames, and force you 
to figure it out yourself. Git tries to help you resolve conflicts by telling 
you when they occur, and helping you resolve them.

To create a conflict, try editing your README.md on the Github 
web interface, as we did in the previous exercise. But this time, _don't_ 
run `git pull` in your local repository.

Instead, in your local repository, open the file for editing with 

```
nano README.md
```

and make _different_ changes to your local copy of the file.

Now, add and commit your changes to the local copy with

```
git add README.md
git commit -m "Make some changes to README"
```
Now, when you run 

```
git push origin master
```

You'll see an error message that looks something like this:

```
To https://github.com/ffund/my-first-repo.git
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'https://github.com/ffund/my-first-repo.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

\pagebreak

## Fixing merge conflicts

Note that this error message tells you _exactly_ what you need to do to fix 
the conflict! It tells you that you need to "integrate the remote changes 
(e.g., 'git pull ...') before pushing again.". Let's try that; run

```
git pull origin master
```

After this step, it will warn you that there were _merge conflicts_ and
you need to fix them:

```
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/ffund/my-first-repo
 * branch            master     -> FETCH_HEAD
   712ad36..63a79bb  master     -> origin/master
Auto-merging README.md
CONFLICT (content): Merge conflict in README.md
Automatic merge failed; fix conflicts and then commit the result.
```

Once again, the error message tells you how to proceed: "fix conflicts and 
then commit the result." To fix the conflict, just open the file that has 
a conflict. (The git output shows you that there is a "Merge conflict in 
README.md"; if you forget, you can run `git status` and look for the files 
that are marked "both modified" - these are the ones with a merge conflict.)

When you open the file with the merge conflict, you'll see "conflict markers"
like

```
<<<<<<< HEAD
(some text)
=======
(other text)
>>>>>>> 63a79bb6672243379be7b71d162895b143b0659e
```

Just edit the file to remove the conflict markers and leave it the way you want 
it. Then, you can use the normal workflow to push the current version to 
your remote:

```
git add README.md
git commit -m "Fix merge conflict in README"
git push origin master
```
