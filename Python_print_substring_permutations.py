from itertools import permutations

#For permutations: if the input iterable is sorted, the permutation tuples will be produced in a sorted order
string, size = input().split()

for i in permutations(sorted(list(string)),int(size)):
    print(''.join(i))