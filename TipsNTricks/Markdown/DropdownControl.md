## Dropdown Control
More often than not, we find ourselves writing long snippets of code which end
up feeding to the now monstruos Markdown document we have created. While actual
pure Markdown does not have a solution for this, we do have a way of making
things a bit tidier when working on Github - say, on a Pull Request. We can
actually create a dropdown control that'll hide the content until the person
reading the document wants to view it.

<details><summary></summary>
<p>

Just like so!

</p>
</details>

### How to?
It's rather simple. Just use the following snippet:

```
<details><summary>Dropdown Control Text Here</summary>
<p>

Place any content you'd like hidden over here!

</p>
</details>
```
