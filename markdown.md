# Markdown syntax

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished, , put your **green** sticky note on the back of your laptop. 

Markdown is a way of writing content in plaintext, with simple formatting marks. 
Its major benefits are:

* it is easy to write, 
* it is widely used (e.g. on Github),
* it can easily be rendered as a nicely formatted PDF, HTML, or other document.

In fact, all of the handouts for this workshop were written in Markdown!

## Headers

Headers in markdown use `#` marks to denote the header level. This markdown
syntax:

```
# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6
```

produces these titles:

---

# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6

---

## Emphasis

Text can be _italicized_ by enclosing it in underscores: `_italicized_`

And text can be made **bold** by enclosing it in double askterisks: `**bold**`

Note that because of this, you have to avoid using underscores in your
regular text. For example, if you include a URL with an underscore in it,
you will have to escape the underscore with a `\`.

This is an escaped underscore: `\_` is rendered as \_ 

## Lists

You can create an unordered list with asterisks, minus signs, or plus signs. 
For example:

```
* List item 
* Another list item
* Yet another list item
```

is rendered as:

* List item                                                                     
* Another list item                                                             
* Yet another list item                                                         

Ordered lists are created by prefacing each item with a number, period, and space.

```
1. first list item
2. second list item
1. third list item (actual numbers don't matter)
```

is rendered as

1. first list item                                                              
2. second list item                                                             
1. third list item (actual numbers don't matter)                                

(so you can add, remove, and swap around elements in the list without having
to renumber everything).

## Links 

Links can be created as inline links, like this:

```
[GitHub](https://github.com/)
```

or as reference-style links:

```
[GitHub][1]

[1]: https://github.com/
```

(with the reference at the bottom of the page). In the rendered version, 
just the link text will be shown:

[GitHub](https://github.com/)                                                   

[GitHub][1]                                                                     
                                                                                
[1]: https://github.com/                                                        

but it is rendered as a "clickable" link. The latter format is more convenient
if you willl repeatedly reference the same link.

\pagebreak 

## Images

The syntax for images is similar to the syntax for links, but with a `!` in 
front. 

```
![GitHub logo](https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png)
```

will render as the GitHub logo. 

You can put an image in a GitHub repository, then get its raw URL and refer 
to it in your README.

## Source code

You can include inline code within a sentence using single backticks, like 
this: 

```
`code`
```

Code blocks are either indented four spaces, or enclosed in lines with 
three backticks, like this:


    ```
    source code block
    ```

## Quotes

Use angle brackets for block quotes, like this:

```
> This is a quote.
> This line is part of the same quote.
```

which renders as this:

> This is a quote.                                                              
> This line is part of the same quote.                                          

## Other formatting

Many Markdown renders also support a subset of HTML, so you may be able
to use some HTML tags in a Markdown document (which can be helpful for things
like tables).
