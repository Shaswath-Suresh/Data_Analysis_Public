# Enter your code here. Read input from STDIN. Print output to STDOUT
size_a = int(input())
a = set(map(int,input().split()))
size_b = int(input())
b = set(map(int,input().split()))

# you can sort a set() in place with sorted() and thenconvert that set to a list
result = a.difference(b)
result.update(b.difference(a))
l = list(sorted(result))
# Using list comprehension to print elements vertically rather than in-line with print(*l)
[print(i) for i in l]
