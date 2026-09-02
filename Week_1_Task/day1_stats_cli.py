# Concept Check 

# Difference between a list and a tuple in Python:
" List is mutable meaning we can change the elements of list once we created it and we define a list using square brackets []. But Tuple can't changed the tuple once it created and we define a tuple using paranthesis()"

# Write a function that returns the square of a number.
def square (num):
    return num*num
x = int(input("Enter a number to find its square: "))
print("The square of:", x, "is", square(x))
print("\n")

# What does *args do in a function signature?
"This is used in a function where numbers of arguments are not known already. and it is stored in a tuple."

# What’s the output of a basic for loop over range(5)?
"The output of a basic for loop pver range will be:0,1,2,3,4. In the range function the stop value is not included in the output."

# What is a dictionary comprehension?
"Dictionaty Comprehension is a easy or short way to create a dictionary . It is similar to list comprehension and its syntax is also same to list comprehension and the difference is for dictionary we use curly brackets instead of square brackets and we pass key:pair in it."
mydict = {y:y**y for y in range(10) if y%2==0}
print(mydict)
print("\n")
# mydict = {key: value for item in iterable if condition == True}

# Implementation Task
#  Build a small command-line program: takes a list of numbers as input, returns mean, median, mode, min, max
newlist = []
num = int(input("Enter the number of elements on which you want to perform operations:"))
for x in range(num):
    val = int(input("Enter the number:"))
    newlist.append(val)
print("The list of numbers is:", newlist)
print("\n")

# maximum of all numbers 
print("the maximum of all numbers is:", max(newlist))
print("\n")
# minimum of all numbers
print("the minimum of all numbers is:", min(newlist))
print("\n")
# mean of all numbers
print("the mean of all numbers is:", sum(newlist)/len(newlist))
print("\n")
# median of all numbers
newlist.sort()
if len(newlist) % 2 == 0:
    median = (newlist[len(newlist)//2 - 1] + newlist[len(newlist)//2]) / 2
else:
    median = newlist[len(newlist)//2]
print("the median of all numbers is:", median)
print("\n")
# mode of all numbers
mode = newlist[0]
for num in newlist:
    if newlist.count(num) > newlist.count(mode):
        mode = num
print("the mode of all numbers is:", mode)

