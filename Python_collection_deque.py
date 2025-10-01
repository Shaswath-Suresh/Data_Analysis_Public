#mess around with a double-ended queue and some of its unique methods

from collections import deque

ops = int(input())
d = deque()
for op in range(ops):
    action = input().split()
    if action[0] == 'append':
        d.append(action[-1])
    elif action[0] == 'appendleft':
        d.appendleft(action[-1])
    elif action[0] == 'pop':
        d.pop()
    else:
        d.popleft()
print(*d)