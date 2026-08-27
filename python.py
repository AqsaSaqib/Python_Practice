newlist = []
values = int(input("Enter total number of elements:"))

for i in range(values):
    num = int(input("Enter Number:"))
    newlist.append(num)  
print("Final List:\n", newlist)

print("Minimum of list is:\n", min(newlist))

print("Maximum of list is:\n", max(newlist))

print("Mean value of list is:\n", sum(newlist)/len(newlist))

print("Median value of list is:\n", newlist[len(newlist)//2] if len(newlist) % 2 == 1 else (newlist[len(newlist)//2 - 1] + newlist[len(newlist)//2]) / 2)