## Macros in VIM - the power of recording
VIM allows us to record our actions and save them into macros we can then reuse,
saving us a lot of time.

### How to?
Just hit the `q<letter>` sequence (`qa` for example), then do whatever you want
to record. The sequence will be recorded in the `<letter>` register (`a` in the
example) for the editor. After you're finished recording, hit the `q` key once
again to stop recording. Afterwards, you can use the `@a` command to reproduce
the macro wherever you are!

### What if I use my Macro A LOT
If you find yourself re-recording your macro every single time, it's about time
you write it in your `~/.vimrc` file. To do so, just type 
`let @a = 'macro sequence'` somewhere in the file, and that's it.

What should you put in between the apostrophes? It's not that easy to do it
manually, as you'll probably be using special characters (returns, etc), but
fear not. Remember that whenever you record a macro, it gets saved to a register
in the editor. So, we can just retrieve the data from the register, then paste
it in the configuration file. Seems fair enough, right?

Just use `"<letter>p` command to paste it (again, `"ap` in our previous example)
and you're ready to go!
