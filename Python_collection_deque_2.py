from collections import deque
tc = int(input())
res = []
for test in range(tc):
    n = int(input())
    cube = deque(map(int,input().split()))
    last = max(cube)
    ans = "Yes"
    if last in [cube[0], cube[-1]]:
        while cube:
            if cube[0] >= cube[-1]:
                current = cube.pop()
                cube.popleft()
            else:
                current = cube.popleft()
                cube.pop()
            try:
                if last is None or current <= last:
                    last = current
                else:
                    ans = "No"
                    break
            except ValueError:
                continue
    else:
        ans = False        
    res.append(ans)
for _ in res:
    print(_)
            