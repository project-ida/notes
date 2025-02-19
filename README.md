---
author: "Ida"
---

# Notes 

A collection of unfinished notes on various topics related to nucleonics.

You write notes in [markdown format](https://www.markdownguide.org/basic-syntax/), including things like equations, references etc, and then behind the scenes there is a Github Action that will convert these markdown files into both PDF and Latex (see folders with those names). The advantage is that:

- Markdown is web friendly
- Latex is journal friendly
- PDF is email friendly

We'll always have formats for every use case.

Below is a little demo of some of the essential markdown features. Check out the source code to see how human readable it all is.

# Section

## Subsection

### Subsubsection

This is some **bold text**.

This is a list:

- Markdown
- is
- awesome 

A numbered list:

1. It's 
2. so
3. Easy

This is an inline equation $E=mc^2$.

This is a display equation:

$$
E = mc^2
\label{eq:emc2}
$$

This equation has a label that can be referenced like this Eq. $\ref{eq:emc2}$. In Github, the equation numbers don't show when rendering markdown and so the Eq. reference will look broken. However, the Latex and PDF versions do have numbers and equation references work as you'd expect.

We can write a bibliographic reference like this [@einstein1905]. It doesn't render here in markdown but will in the PDF and Latex versions. The linking is done via `refs.bib` that's founds in the `pandoc` folder.

Hyperlinks are a piece of cake, e.g. here are more [examples of what you can do in markdown](https://www.markdownguide.org/basic-syntax/).
