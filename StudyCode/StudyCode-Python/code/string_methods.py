str1 = "a"
str2 = "B"
str3 = "1"

# str1
print("str1:")
print(str1.isalpha())
print(str1.isdigit())
print(str1.isalnum())
print(str1.islower())
print(str1.isupper())
print(str1.isspace())
print(str1.istitle())
print("\n")

#str2
print("str2")
print(str2.isalpha())
print(str2.isdigit())
print(str2.isalnum())
print(str2.islower())
print(str2.isupper())
print(str2.isspace())
print(str2.istitle())
print("\n")

#str3
print("str3:")
print(str3.isalpha())
print(str3.isdigit())
print(str3.isalnum())
print(str3.islower())
print(str3.isupper())
print(str3.isspace())
print(str3.istitle())
print("\n")

###############################

str4 = "aaaa"
str5 = "BBBB"
str4t = str4.upper()
print(str4t)
str5t = str5.lower()
print(str5t)

str6 = "allen"
str6t = str6.title()
print(str6t)

str7 = "EVELAND"
str7t = str7.capitalize()
print(str7t)

str8 = "Allen Eveland"
str8t = str8.swapcase()
print(str8t)

###################################

str9 = "aabb"
print(str9.find("b"))
print(str9.rfind("b"))
print(str9.index("a"))

str10 = "I love Allen"
str10t = str10.replace("Allen", "Eveland")
print(str10t)
print(str10.count("l"))

########################################

str11 = "I'm Allen Eveland"
str11t = str11.split()
print(str11t)
str11t = str11.rsplit()
print(str11t)

str12 = "Allen\n Eveland\n"
str12t = str12.splitlines()
print(str12t)

list1 = ["Allen", "Eveland"]
str13 = " ".join(list1)
print(str13)
########################################

str14 = "...Mango..."
str14t = str14.strip(".")
print("All of fruit, i like ", str14t)

str15 = "...Mango..."
str15t = str15.lstrip(".")
print("All of fruit, i like ", str15t)

str16 = "...Mango..."
str16t = str16.rstrip(".")
print("All of fruit, i like ", str16t)

str17 = "Mango"
str17t = str17.zfill(10)
print(str17t)

str18 = "Mango"
str18t = str18.center(7)
print(str18t)

str19 = "Allen"
str19t = str19.ljust(10)
print(str19t)

str20 = "Allen"
str20t = str20.rjust(10)
print(str20t)
