from itertools import combinations
string,  size = input().split()

for i in range(int(size)):
    for combo in combinations(sorted(list(string)),i+1):
        print(''.join(combo))
