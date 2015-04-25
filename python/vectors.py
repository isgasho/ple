import math

class Vector:
    def __init__(self, i, j):
        self.i = i
        self.j = j

    def magnitude(self):
        return math.sqrt(self.i * self.i + self.j * self.j)

    def __add__(self, v):
        return Vector(self.i + v.i, self.j + v.j)

    def __mul__(self, v):
        return self.i * v.i + self.j * v.j

    def __str__(self):
        return '<{},{}>'.format(self.i, self.j)

u = Vector(3, 4)
v = Vector(-5, 10)
print(u.i)                 # 3
print(u.j)                 # 4
print(u.magnitude())       # 5.0
print(u + v)               # <-2,14>
print(u * v)               # 25
