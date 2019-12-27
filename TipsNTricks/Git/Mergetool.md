## Mergetool
Tired of resolving large merge-conflicts? Yeah, nobody likes that... But, there
_are_ tools which can make your life easier. And, guess what? They even come
bundled with the actual git toolset.

`mergetool` is a powerful tool that'll aid you when having merge conflicts. No
need to open each conflicted file one by one, this'll help you.

### How to?
Just run `git mergetool` (`gmg` if using the aliases in 
[.zsh_aliases](../../.zsh/.zsh_aliases)) and the default `difftool` will open 
up. You can see diffs side by side and fix whatever needs to be fixed with a 
helpful UI. When you're done with a file, just save and close the tool, then the
next conflicted file will show up. Repeat until all conflicts are solved,
commit, and you're ready to go!

But... the default tool UI is quite ugly and a bit counter-intuitive. And we'd
like to change that.

### Making it neat
So, an interesting thing about `mergetool` is that you can actually configure it
to use any UI - a.k.a `difftool` - you'd like. You can use VIM (only recommended 
for experienced VIM users with a nice color scheme set up) or VSCode, for 
instance. We'll focus on how to setup the latter.

Doing this is actually pretty simple. Just open up your `.gitconfig` file
(you'll find it in your home, `~/.gitconfig`) and add the following snippet:

```
# ======== VSCode as Difftool setup ========
[merge]
    tool = vscode
[mergetool "vscode"]
    cmd = code --wait $MERGED
[diff]
    tool = vscode
[difftool "vscode"]
    cmd = code --wait --diff $LOCAL $REMOTE
# ======== VSCode as Difftool setup ========
```

The above snippet configures both your `mergetool` and `difftool` to use VSCode.
You can always just use `git difftool` just to view diffs prior to commiting,
for instance, so this is useful even when you're not resolving merge conflicts.

You can also configure VIM or other tools, and its setup is actually easier than
that of VSCode's. Just use `git config --global merge.tool vimdiff`, or any
desired `difftool` you might choose. Internally, though, this command will work
similarly to what we just did manually.
