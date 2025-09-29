n = int(input())
s = set(map(int, input().split()))

#set.remove(x) will raise a keyerror if x does not exist
#set.discard(x) does the same, without raising the keyerror
#set.pop(x) remove and returns an arbitrary element from the set. raises keyerror if set is empty

for _ in range(int(input())):
    command = input().split()
    if command[0] == 'pop':
        s.pop()
    elif command[0] == 'remove':
        s.remove(int(command[1]))
    else:
        s.discard(int(command[1]))
print(sum(s))