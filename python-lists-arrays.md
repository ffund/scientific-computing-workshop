# Using lists/arrays

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished the steps on the _front_ of this page, put your 
**green** sticky note on the back of your laptop. Then, you can turn the page 
over and try out some of the more advanced tricks on the back while you wait 
for the rest of the group to be ready.                                          

## Using lists in Python

We can create an empty list and then add to it, like this:

```
animals = []
animals.append("bear")
animals.append("lion")
animals.append("monkey")
animals.append("unicorn")

print(animals)
```

Or we can create a list with items already in it, like this:

```
animals = ["bear", "lion", "monkey", "unicorn"]

print(animals)
```

We can access individual list entries by index (starting from zero), or 
iterate over all the entries in a list:

```
print(animals[0])

for animal in animals:
	print(animal)
```

We can remove the last item in the list:
```
a = animals.pop()
print(a)
print(animals)
```

or remove a specified item by index:

```
a = animals.pop(1)
print(a)
print(animals)
```
List entries do not have to be unique. For example, we can add another "bear"
to the list:

```
animals.append("bear")
print(animals)
animals.count("bear") # count the number of bears in the list
```

We can sort the items in a list (the list is sorted in place, i.e. the original 
list is modified):

```
animals.sort()
print(animals)
```

\pagebreak

## List comprehension

Python has a concept called "list comprehension" that we can use to create 
lists from other lists in a very natural way.

For example, using list comprehension on our `animals` list, we can create a
new list of non-bear animals:

```
animals = ["bear", "lion", "monkey", "unicorn", "bear"]                                 

new = [a for a in animals if a!="bear"]
print(new)
```

In addition to filtering the list, we can also perform an operation on the
selected elements at the same time. For example:

```
animals = ["bear", "lion", "monkey", "unicorn", "bear"]                         
                                                                                
new = [a.upper() for a in animals if a!="bear"]                                         
print(new)                                                                      
```

List comprehensions are an extremely powerful tool. Try creating a one-line
list comprehension to generate the following lists:

* From a list of numbers, create a list of only the even numbers.
* From a list of numbers, create a new list of the same numbers, but doubled 
(list comprehension without conditionals).
