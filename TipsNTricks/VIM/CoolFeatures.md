## (Generally unuseful but) Cool VIM Features
There are quite a lot of these, the following ones are just a bunch.

### Increment / Decrement
This is _crazy_. VIM has built in support to actually increment or decrement
numbers written in the text! While on `NORMAL` mode, just hit `ctrl-a` to
increment or `ctrl-x` to decrement a number. Note that your cursor should be
right over the number for this to work. Amazing!

### Markers
So, you can create markers in your file and jump around them like crazy. Type
`m<letter>` (for example `mk`), then use `\`<letter>` or `'<letter>` to jump to
the mark (`'k` in our example).
