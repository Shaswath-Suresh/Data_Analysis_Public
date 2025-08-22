#Counter turns your  list of numbers into a frequency count dictionary of the list elements.
#elements become keys and their count becomes the values
from collections import Counter

#getting input and initializing total variable
x = int(input())
n = list(map(int, input().split()))
shoe_inventory = Counter(n)
total = 0
customers = int(input())

for i in range(0,customers):
    size,price = list(map(int, input().split()))
    #get the orders for each customer
    if shoe_inventory[size] > 0: #if the shoe size is in stock
        total += price
        shoe_inventory[size] -= 1 #decrement the inventory of that shoe size by one after the sale is added to the total

print(total)