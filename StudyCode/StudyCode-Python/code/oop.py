# setup oop
class Fruit:
    def __init__(self, name: str, color: str, taste: str):
        self.name = name
        self.color = color
        self.taste = taste
    
    def name_fruit(self):
        print(f"Name: {self.name}")

    def color_fruit(self):
        print(f"Color: {self.color}")

    def taste_fruit(self):
        print(f"Taste: {self.taste}")

apple = Fruit("apple", "red", "sweet")
apple.name_fruit()
apple.color_fruit()
apple.taste_fruit()

# Inheritance

# inherit Fruit class
class Fruit_a(Fruit):
    pass

lemon = Fruit_a("lemon", "green", "sour")
lemon.name_fruit()
lemon.color_fruit()
lemon.taste_fruit()

# adding function and attr
class Fruit_b(Fruit):
    def __init__(self, name: str, color: str, taste: str, size: int):
        super().__init__(name, color, taste)
        self.size = size

    def size_fruit(self):
        print(f"Size: {self.size}")

wtmelon = Fruit_b("watermelon", "green", "sweet", 10)
wtmelon.name_fruit()
wtmelon.color_fruit()
wtmelon.taste_fruit()
wtmelon.size_fruit()

# override function

class Fruit_c(Fruit):
    def __init__(self, name, color, taste):
        super().__init__(name, color, taste)
    
    #override name_fruit function
    def name_fruit(self):
        print(f"The name of fruit: {self.name}")

orange = Fruit_c("orange", "orange", "sour")
orange.name_fruit()
orange.color_fruit()
orange.taste_fruit()

# Polymorphism

class Car:
    def move(self):
        print("Car drive")

class Boat:
    def move(self):
        print("Boat sail")

class Plane:
    def move(self):
        print("Plane fly")

lst_class = [Car(), Boat(), Plane()]

for move in lst_class:
    move.move()
"""
Or:
car = Car()
boat = Boat()
plane = Plane()
for move in (car, boat, plane):
    move.move()

"""
