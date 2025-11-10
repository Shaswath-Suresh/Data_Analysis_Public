# Enter your code here. Read input from STDIN. Print output to STDOUT
# take in a variable x, a result k, and a polynomial P and evaluate P(x) = k
x, k = map(int, input().split())
P = input()

if eval(P) == k:
    print(True)
else:
    print(False)
