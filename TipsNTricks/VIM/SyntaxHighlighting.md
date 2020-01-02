## Syntax Highlighting - Coding in VIM!?
As you should know by now, VIM is more than just a simple editor. You can do
just about anything with it. Even coding.

But, if we want to code in VIM, there _are_ some small preparations we need to
put in place.

### How to?
So, VIM provides us with a configuration to enable syntax highlighting. Just add
`syntax on` to your `~/.vimrc` (or execute `:syntax on` if you don't want it
auto-enabled every time you open up the editor) and that's it.

VIM comes packaged with a bunch of common languages pre-configured for
highlighting. But, it may be the case that your particular language isn't
supported out of the box. In such case, we would need to add the highlighting
rules to the `~/.vim/syntax` folder. But, of course somebody else already did
this, and why reinvent the wheel, right?

Just install the [vim-polyglot](https://github.com/sheerun/vim-polyglot) plugin,
which probably already takes care of this configurations for you. It has support
for a lot of common-use languages so you're most likely bound to have the
problem solved for you this way.

Plus, [vim-polyglot](https://github.com/sheerun/vim-polyglot) also adds a few
other configurations which are quite cool; `indent` and `ftplugin`. These allow
you to use auto-indent features in the editor (run `set autoindent`), as well as
enable some filetype specific plugins. Quite neat!
