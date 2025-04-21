import os

path = os.path.join(os.path.dirname(__file__), "..", "numbers.txt")


with open(path, "r") as file:
    numbers = file.read().split()
    num1 = int(numbers[0])
    num2 = int(numbers[1])

print(num1 + num2)
