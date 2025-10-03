# strict supersets
a = set(input().split())
res = []
for _ in range(int(input())):
    b = set(input().split())
    res.append(a.issuperset(b) and (len(a) > len(b)))

print(all(res))