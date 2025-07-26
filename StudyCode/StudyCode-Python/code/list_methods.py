lst = ["apple", "banana", "orange"]
print(lst)

# append(elemnt)
list1 = ["apple", "orange", "banana"]
list1.append("watermelon")
print(list1)

# copy()
list2 = list1.copy()
print(list2)

# count(value)
count = list2.count("banana")
print(count)

# extend(iterable)
list3 = ["apple", "orange", "banana"]
list4 = [1, 2, 3]
list3.extend(list4)
print(list3)

# index(elmnt, start, end)
index = list1.index("apple")
print(index)

# insert(pos, elmnt)
list5 = ["apple", "orange", "banana"]
list5.insert(1, "watermelon")
print(list5)

# pop(pos)
list6 = ["apple", "banana", "orange"]
list6.pop(2)
print(list6)

# remove(elmnt)
list7 = ["apple", "banana", "orange"]
list7.remove("orange")
print(list7)

# reverse()
list8 = ["apple", "banana", "orange"]
list8.reverse()
print(list8)

# sort(reverse=True|False, key=myFunc)
list9 = ["Ford", "Volvo", "BMW"]
list9.sort()
print(list9)

# clear()
list10 = ["apple", "orange", "banana"]
list10.clear()

