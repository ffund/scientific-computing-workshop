# Using branches

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished the steps on _both_ sides of this page, put your 
**green** sticky note on the back of your laptop.                               

## Retrieving a particular commit

One of the key strengths of git is the ability to "go back" to a previous 
"snapshot" of a repository, either temporarily (to just see what's in it)
or permanently (to revert back to that version).

Notice that every time you run `git commit`, there is a "commit hash" 
associated with the commit. For example, try running

```
git log
```

from inside your git repository. In each log entry, the first line
shows the commit hash, e.g. :

```
commit fc3792a21ab443e52b55a61407b33aded5481877
Merge: 625b584 63a79bb
Author: Fraida Fund <ffund@nyu.edu>
Date:   Sun Nov 6 13:55:21 2016 -0500

    Fixed merge conflicts
```

To play with a "snapshot" of my repository corresponding to a particular
commit, I can check out that commit into a new _branch_, like this:

```
git checkout -b fixedmerge fc3792a21ab443e52b55a61407b33aded5481877
```

(Your comit hash will be different; use one from _your_ log history.)
Now if I run 

```
git branch
```

I can see that my local repository has two branches, `fixedmerge` and `master`, 
and that I am currently on `fixedmerge`:

```
* fixedmerge
  master
```

Furthermore, if I examine the contents of my files, I can see that they are
exactly as they were as of that commit.

I can switch back and forth between branches to see the different versions
of my file:

```
git checkout master
git checkout fixedmerge
```

If I want to restore my `master` branch back to a previous commit, I can 
checkout the master branch and use 

```
git checkout master
git revert --no-commit fc3792a21ab..HEAD
git commit
git push origin master
```

again, substituting your own commit hash. You don't have to use the full commit
hash; you can just use the first part of it.

## Work in new branch, merge back to master

Sometimes, you may want to work on a new feature or test something in its
own branch, rather than on `master`. You can start a new branch (named `new`) 
with 

```
git checkout -b new
```

Change your README.md, then run

```
git add README.md
git commit -m "Test branch feature"
git push origin new
```

where in your `git push` command, you supply the name of the branch you are 
working on instead of `master`.

If you want to integrate the changes from the `new` branch into the `master`
branch, you can _merge_ it:

```
git checkout master
git merge new
git push origin master
```

and then delete the `new` branch, once it's no longer needed:

```
git branch -d new
```
