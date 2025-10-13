import numpy
#basic math functions operate element-wise on arrays

n,m = map(int, input().split())

a = numpy.array([list(map(int,input().split())) for i in range(n)], int)
b = numpy.array([list(map(int,input().split())) for i in range(n)], int)

print(a + b)
print(a - b)
print(a * b)
print(a // b)
print(a % b)
print(a ** b)