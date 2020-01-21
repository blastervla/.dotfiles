## Git Add Patch - Granular control for better code
Do you ever find yourself wanting to commit only parcial changes to a file
instead of the whole changeset? Well, you can actually do that without much
effort! To do this, _Git_ offers us a powerful tool: `git add -p`.

### How to?
`git add -p` (or `git add --patch`) is really straight forward to use. Upon
using it, you'll be prompted with a command line with a view of a hunk of code,
and several options. Options consist of just one letter, and here's what each
one means:

```
    s - split this hunk
    y - stage this hunk
    n - do not stage this hunk
    q - quit; do not stage this hunk or any of the remaining ones
    a - stage this hunk and all later hunks in the file
    d - do not stage this hunk or any of the later hunks in the file
    g - select a hunk to go to
    / - search for a hunk matching the given regex
    j - leave this hunk undecided, see next undecided hunk
    J - leave this hunk undecided, see next hunk
    e - manually edit the current hunk
    ? - print help
```

Now, it's good to note that hunks may sometimes be larger than what you want to
commit, but worry not; you can usually just hit `s` to split the hunk in smaller
ones, providing you with more granularity to do the job. There _will_ be times
when this is not possible, but you should be covered in most use cases.

Finally, it's also worth stating that this command works similar to the regular
`git add`, with the difference that if you don't specify any file, in 
`git add -p` all files will be taken into consideration. This means you _can_
specify a particular file to patch-stage.
