## Pull Requests best practices
> **Disclaimer:** This document is strongly inspired in 
  [x0000ff](https://github.com/x0000ff)'s talk, 
  [How to make a cute Pull Request](https://www.youtube.com/watch?v=IDAXK23vCfQ),
  which I strongly recommend watching

Pull Requests are intentions to merge your code into the repository's productive
state. Therefore, it is really important to be tidy and take the time to write
them appropriately.

After all, if people don't understand what changes you're making, or why you
made them, it is difficult for them to merge it in their productive code, as
they're putting themselves on the line by accepting your changes which _might_
break their code. So, **tidiness** and **clarity** are two important factors in
any Pull Request.

### Things to have in mind
When creating a Pull Request, there are a couple of things you should always
consider. Take them as a Bucket List for creating nice Requests.

- [x] Write a nice description stating what you're changing, and why. Screenshots
    or gifs might be good resources when implementing a visual change. You can
	use markdown resources such as tables to organize images, use bullets or
	numbered-lists to express points or steps, etc.

- [x] Include any API contracts, when appropriate, that your code relies onto.
    These can be JSON snippets as well as links to other Pull Requests, but the
	information should be clear enough so as not to have trouble checking that
	your code actually complies to that contract. This will help prevent bugs.
	If your JSON is particularly large, you can use a
	[Dropdown Control](../TipsNTricks/Markdown/DropdownControl.md).

- [x] Be tidy with your commits. More information of this right ahead!

### Being tidy, commit-wise
Lastly, a good Pull Request is not only determined by having a good Markdown
description. Code must be tidy, commented where necessary, and commits must be
as well. In order to do this, we will preferably need to check out all items in
the following list:

- [x] Commits should have descriptive comments (enough with all those 'Fix'
    commits, what exactly are you fixing?)

- [x] Commits should follow a logical order, they should depict a story telling
    how you developed your feature. For instance, it might make sense to have 
	all models added in the same commit, then all UI in another one, and all 
	tests in a third one. This way, Code Review is way easier and follows a
	logical pattern. To achieve this, you will most probably need to use some
	[Rebase](../TipsNTricks/Git/Rebase.md) skills.
