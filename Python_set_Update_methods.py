#set update methods
A_len = int(input())
a = set(input().split())
N_commands = int(input())

for _ in range(N_commands):
    command,set_len = input().split()
    if command == 'intersection_update':
        a.intersection_update(set(input().split()))
    elif command == 'update':
        a.update(set(input().split()))
    elif command == 'symmetric_difference_update':
        a.symmetric_difference_update(set(input().split()))
    else:
        a.difference_update(set(input().split()))

print (sum(map(int,a)))