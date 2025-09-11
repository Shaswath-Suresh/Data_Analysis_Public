from itertools import product
l = []
n_entry, M = map(int,input().split())

for i in range(n_entry):
    new_list = list(map(int,input().split()))
    l.append(new_list[1:])

result = 0
combos = list(product(*l))

for combo in combos:
    combo = [int(x**2) for x in combo]
    curr_max = sum(combo) % M
    if curr_max > result:
        result = curr_max

print(result)
