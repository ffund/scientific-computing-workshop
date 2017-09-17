# Using libraries

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished the material on the front of this page, put your 
**green** sticky note on the back of your laptop. Then, you can proceed to 
the extra work on the back.

## Python libraries

Python is a popular language in large part because of all the libraries that
are available for it, especially for scientific computing, signal 
processing, data analysis, machine learning, and similar tasks.

To use a Python library, you call `import`, e.g.

```
import random
```

and you can then call a function provided by the library as e.g.

```
# generate a random number between 0 and 10, inclusive
random.randint(0, 10)
```

You can also import a library and assign it a convenient name by which 
to refer to it, as e.g.

```
import numpy as np
np.power(2,2)
```

It is also possible to import all functions of a library into the namespace
without having to refer to the library explicitly, e.g.

```
from random import *
randint(0,10)
```

but this is not recommended due to the possibility of naming collision.

## Visualizing data with matplotlib

Matplotlib is a popular library used for visualizing data in Python.
Its syntax is similar to Matlab.

Try creating a simple plot inside a Jupyter notebook:

```
import numpy as np
import matplotlib.pyplot as plt

X = np.linspace(-np.pi, np.pi, 256, endpoint=True)
C,S = np.cos(X), np.sin(X)

plt.plot(X,C)
plt.plot(X,S)

plt.show()
```

Matplotlib can also be used to create more complicated visualizations:
plots that overlay data on a map, animations, etc.

\pagebreak

## Useful libraries

I have listed here some Python libraries that are especially useful 
for ECE students. If you have extra time, choose one that is related to your interests and 
try out the linked example.

`scikit-learn` is an extremely popular machine learning library, with 
already-implemented versions of many popular machine learning models. A set
of examples are available at:

```
http://scikit-learn.org/0.19/auto_examples/index.html
```

`networkx` is a library for working with data involving networks (i.e.
data that is structured with edges and vertices). You can try some examples at:

```
https://networkx.github.io/documentation/networkx-1.11/examples/index.html
```

Here is an example of a research project by one of my students, using 
`networkx`:

```
https://witestlab.poly.edu/blog/representing-community-network-topologies-on-geni/
```

`seaborn` is a library for making _nice_ visualizations, using matplotlib 
"under the hood" but with nicer default settings, and a wide range of 
types of plots. You can try examples at:

```
http://seaborn.pydata.org/examples/
```

`scikit-image` is an image processing library. You can find examples to try
at:

```
http://scikit-image.org/docs/0.13.x/auto_examples/index.html
```

`pandas` is a great library for working with data. If you're interested in 
using Python for data analysis, try out some of these examples:

```
https://pandas.pydata.org/pandas-docs/stable/tutorials.html
```

Here is an examples of a research project by one of my students, using `pandas`:

```
https://witestlab.poly.edu/blog/bridging-the-empathy-gap-between-web-developers-and-users/
```

`numpy` and `scipy` can be used for a wide range of signal processing tasks.
In this assignment, I asked students to use these libraries to take raw IQ
samples from a wireless FM radio signal, demodulate it, and turn it into 
an audio file that can be played back on your computer. You can try it out yourself at:

```
http://witestlab.poly.edu/~ffund/el9043/labs/lab1
```
