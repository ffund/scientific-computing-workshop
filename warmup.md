# Warmup

If you need help at any time, put your **red** sticky note on the back of your 
laptop. When you've finished the steps on the _top_ of this page (above 
the horizontal line), put your **green** sticky note on the back of your laptop. 
Then, you can continue with the bottom of the page while you wait 
for the rest of the group to be ready.                                          

Today we will continue working with the Citi Bike data set. While previously
we looked at one basic feature of the data (the most popular station), today 
we will use Python to take a closer look.

In preparation for today's lesson,

* Create a new Github repository. You will keep the code from today's 
mini project on the Citi Bike data, and your explanation of your mini project, 
in it. Give your repository an appropriate title related to the contents of the 
repository (i.e. the code that you will put in it).
* SSH into our server at `server.camp.ch-geni-net.instageni.nysernet.org` 
using your net ID as your username, as in 
```                                                                             
ssh ff524@server.camp.ch-geni-net.instageni.nysernet.org                        
```                                                                             
and the following password:     
```                                                                             
BOOK-FINISHED-WONDER-lost                                                       
```
* Clone a copy of your new repository into your home directory on our server.
* Create a Bash script that downloads and unzips each of the Citi Bike data 
files from https://witestlab.poly.edu/bikes/ (i.e. the very first part 
of the script we worked on last week).
* Add this Bash script to your git repository, commit your changes, and 
push to Github.

---

If you have time, modify your script so that it doesn't re-download files
that you already have (if you run the script more than once):

* if a CSV file for a particular month exists, it should not download the 
ZIP file again.
* if a ZIP file for a particular month exists, but not a CSV file, 
it should not download the ZIP file again, but it should unzip it.
