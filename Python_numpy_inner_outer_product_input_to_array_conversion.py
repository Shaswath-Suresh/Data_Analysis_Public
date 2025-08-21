import numpy as np
#How to read in a list of numbers as a numpy array of integers
a = np.array(list(map(int, input().split())))
b = np.array(list(map(int, input().split())))

print(np.inner(a,b))
print(np.outer(a,b))
