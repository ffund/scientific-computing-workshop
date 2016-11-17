# Read in data from a CSV file

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished the steps on the _front_ of this page, put your 
**green** sticky note on the back of your laptop. Then, you can turn the page 
over and try out some of the more advanced tricks on the back while you wait 
for the rest of the group to be ready.                                          

## Prepare a small data file

Assuming you have already downloaded the Citi Bike data set; in the Bash shell,
create a "small" data set: 

```
cat 201601-citibike-tripdata.csv | head --lines=50 > smalldata.csv
```

(Using a complete data file will make everything run very slowly, and create
a lot of output; it's more useful to start small and then, when everything 
works as it should, scale up to the full data set.)



## Using the CSV module

The simplest way to read in data from a CSV file in Python is with the 
`csv` module:

```
import csv

filename='smalldata.csv'                                         
with open(filename, 'r') as csvfile:
	filereader = csv.reader(csvfile, delimiter=',')
	for row in filereader:
		print(', '.join(row))
```

Each row of the CSV file is read in as an array of strings. For example, if you
were specifically interested in the second column (start time), you 
might do

```
filename='smalldata.csv'                                         
with open(filename, 'r') as csvfile:                                           
	filereader = csv.reader(csvfile, delimiter=',')                         
	for row in filereader:                                                  
		print(row[1])                                     
```

To separately read in the header row, use `next` to read in one row and 
advance the reader to the next row. 
For example, if you wanted to read in the trip duration as an integer value,
and store all of the durations in a list, you could do 

```                                       
durations = []                                      
filename = 'smalldata.csv'                                         
with open(filename, 'r') as csvfile:                                           
	filereader = csv.reader(csvfile, delimiter=',')                         
	header = next(filereader)                                               
	for row in filereader:                                                  
		durations.append(int(row[0]))                         

print(durations)
```   
If you didn't read in the header row separately, this would fail, because
the header row cannot be converted to an integer value.


\pagebreak

## Using `pandas`

`pandas` is a popular library for working with data in Python.
To read in data from a CSV file into a `pandas` data frame,

```
import pandas as pd

filename='smalldata.csv'
df=pd.read_csv(filename, sep=',')
```

Look at the contents of `df`:

```
print(df)
```

You'll see the header row, the top few rows of the data frame, the bottom 
few rows of the data frame (separated by a `...`), and the total 
number of rows and columns.

You can see just the column names:
```
df.columns
```

just the top few rows:
```
df.head()
```

or just the bottom few rows:
```
df.tail()
```

The `head()` and `tail()` methods also accept the number of rows to see, as
an argument:
```
df.tail(3)
```

You can also see a quick statistic summary of the numeric fields in your data:

```
df.describe()
```

To iterate over rows of a `pandas` data frame, we use `iterrows()`, which 
gives us both the index of the row and its contents. We can access a specific
element of a row by column name:

```
for index, row in df.iterrows():
  print(index, row['starttime'])
```
