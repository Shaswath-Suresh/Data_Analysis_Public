import numpy
#identity(m) returns square identity array, 1's along main diagonal
#eye(m,n,k) returns Lists of lists with 1 as the diagonal. parameter k determins which diagonal has the 1's

numpy.set_printoptions(legacy = '1.13')

n,m = map(int,input().split())

print(numpy.eye(n,m))