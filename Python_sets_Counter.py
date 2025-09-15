from collections import Counter

n,m = map(int,input().split())
arr = map(int, input().split())
A = set(map(int,input().split()))
B= set(map(int,input().split()))

freq = Counter(arr)
happiness = 0
for i in A:
    happiness += freq[i]

for i in B:
    happiness -= freq[i]
    
print(happiness)