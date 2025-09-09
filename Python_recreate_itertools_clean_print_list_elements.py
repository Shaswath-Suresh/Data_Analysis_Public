A = sorted(list(map(int, input().split())))
B = sorted(list(map(int, input().split())))

result_set = set()

final_set = [(i,j) for i in A
                    for j in B]

#For clean print of elements, use print(*list)
print(*final_set)