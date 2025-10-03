#use.set.issubset() method
res = []
for case in range(int(input())):
    a_num = int(input())
    a = set(input().split())
    b_num = int(input())
    b = set(input().split())
    res.append(a.issubset(b))

[print(x) for x in res]