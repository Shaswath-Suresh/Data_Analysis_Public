import numpy as np 

n = int(input())
mat = []
#Use iterator to fill out square matrix
for i in range(0,n):
    mat.append(np.array(list(map(float,input().split()))))

print(round(np.linalg.det(mat),2))

'''
List comprehension version

a = [list(map(float, input().split())) for _ in range(n)]
print(round(np.linalg.det(a),2))

'''