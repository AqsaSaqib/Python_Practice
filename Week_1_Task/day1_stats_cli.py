# Concept Check 

# Difference between a list and a tuple in Python:
" List is mutable meaning we can change the elements of list once we created it and we define a list using square brackets []. But Tuple can't changed the tuple once it created and we define a tuple using paranthesis()"

# Write a function that returns the square of a number.
def square (num):
    return num*num
x = int(input("Enter a number to find its square: "))
print("The square of:", x, "is", square(x))

# What does *args do in a function signature?
"This is used in a function where numbers of arguments are not known already. and it is stored in a tuple."

# What’s the output of a basic for loop over range(5)?
"The output of a basic for loop pver range will be:0,1,2,3,4. In the range function the stop value is not included in the output."

# What is a dictionary comprehension?
"Dictionaty Comprehension is a easy or short way to create a dictionary . It is similar to list comprehension and its syntax is also same to list comprehension and the difference is for dictionary we use curly brackets instead of square brackets and we pass key:pair in it."
mydict = {y:y**y for y in range(10)}
print(mydict)
# mydict = {key: value for item in iterable if condition == True}