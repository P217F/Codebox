# setup dict

thisdict = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}
print(thisdict)

# copy methods

dict1 = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}

dict1t = dict1.copy()
print(dict1t)

# fromkeys methods

x = [1, 2, 3]
y = "allen"

dict2 = dict.fromkeys(x, y)
print(dict2)

# get methods

dict3 = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}

dic3t = dict3.get("a")
print(dict3)

# items methods

dict4 = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}

for dict4a, dict4b in dict4.items():
    print(dict4a, " => ", dict4b)

# keys methods

dict5 = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}

for dict5t in dict5.keys():
    print("Keys: " , dict5t)

# pop methods

dict6 = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}

dict6.pop("a")
print(dict6)

# popitem

dict7 = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}

dict7.popitem()
print(dict7)

# setdefault methods

dict8 = {
    "a" : "apple",
    "b" : "banana",
}

dict8.setdefault("c", "orange")

print(dict8)

# update methods

dict9 = {
    "a" : "apple",
    "b" : "guava"
}
dict9.update({"c" : "orange"})
dict9.update({"b" : "banana"})

print(dict9)

# values methods

dict10 = {
    "a" : "apple",
    "b" : "banana",
    "c" : "orange"
}

for dict10t in dict10.values():
    print("Value: ", dict10t)
