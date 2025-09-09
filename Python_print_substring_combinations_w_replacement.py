from itertools import combinations_with_replacement
string,  size = input().split()

for combo in combinations_with_replacement(sorted(list(string)),int(size)):
    print(''.join(combo))