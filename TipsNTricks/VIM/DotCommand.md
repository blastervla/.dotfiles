## The Most Useful Command - `.`
Ever wondered what the most useful command in a big editor as VIM is? It's kind
of a difficult question, actually, as how helpful a command is usually varies
depending on the context of use. So, it'd be difficult to say... Or is it?

It turns out, as you are the one using the editor, you _do_ know its context of
use. Therefore, it's reasonable enough that the best command of any editor is
the one that lets you repeat whatever you did last - provided it's done in a way
that's easy enough so that you're benefited from it.

That's exactly what the `.` command does in VIM; repeat your last action.

### How does it work?
It's really simple. Just execute a command other than a movement, like switching
from `NORMAL` mode to any other, doing whatever you want to, then exiting back
to normal mode, for instance. Then, it's just a matter of hitting the `.` key 
and, BOOM💥. The command is repeated wherever you are.

### A couple of considerations
Do note that the `.` command cannot replicate translations (movements), so if
you use any arrow keys while in `INSERT` mode, for example, that will cut the
command in two and only whatever you do afterwards will impact on the `.`
command.
