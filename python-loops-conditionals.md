# Loops, conditionals, and functions in Python

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished, put your 
**green** sticky note on the back of your laptop. 

## Loops in Python

Loops in Python are marked by indentation and a color. A simple 
"for" loop is written like this:

```
for i in range(3):
  print(i)
```

## Conditionals

Conditional statements use a similar syntax. For example:

```
for i in range(20):                                                              
  if i < 10:
    print("%d  - Less than 10" % (i))
  elif i == 10:
    print("%d - 10 exactly" % (i))
  else:
    print("%d - Greater than 10" % (i))                                                                 
```

## Function definitions and function calls

Functions, too, have a similar syntax. A function definition looks something
like this:

```
def hello():
  print("Hello, world")
```

and you can then call the function as

```
hello()
```

You can also define functions with arguments:

```
def hello(name):
  print("Hello, %s" % (name))
```

can be called as

```
hello("NYU student")
```

and you can define default values for the arguments:

```
def hello(name = "NYU student"):                                                                
  print("Hello, %s" % (name))                                                   
```

which can then be called with or without an explicit argument:

```
hello()
hello("NYU Tandon ECE student")
```
