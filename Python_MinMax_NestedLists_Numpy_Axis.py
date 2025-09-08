import numpy as np

n,m = map(int,input().split())
l = []
for entry in range(n):
    l.append(list(map(int,input().split())))

min_array = np.min(np.array(l), axis = 1)

print(max(min_array))