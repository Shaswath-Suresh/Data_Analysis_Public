from collections import Counter

x = int(input())
n = list(map(int, input().split()))
shoe_inventory = Counter(n)
total = 0
customers = int(input())

for i in range(0,customers):
    size,price = list(map(int, input().split()))
    if shoe_inventory[size] > 0:
        total += price
        shoe_inventory[size] -= 1

print(total)
    