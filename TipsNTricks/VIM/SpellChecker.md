## Writing in VIM - Spell Checking
So, this is quite an unknown feature VIM has. Most of people that use the editor
don't even know this exists, but VIM has a Spell-Checker. And it's quite easy to
enable, too! Let's get to it.

### How to?
Just execute `:setlocal spell! spelllang=en_us` and that's it! Of course,
replace `en_us` with whatever language you're writing in now. Natively supported
languages and their names can be found 
[here](http://ftp.vim.org/vim/runtime/spell).

You can also map a key to toggle spellchecking by editing your `~/.vimrc` file.
I have it mapped to `F6`, but you can do any key you'd like of course. You can
check out my configuration file [here](../../Resources/.vimrc).

### Other functionalities
As well as spell checking, VIM can autocomplete whatever you're typing, too!
Just hit `z=` while having your cursor above the word you want to autocomplete
and VIM will pop up a list with the suggested words. Type the number of the word
you'd like and hit `enter` to autocomplete it, or just hit `enter` without
typing anything to leave it as it is.
