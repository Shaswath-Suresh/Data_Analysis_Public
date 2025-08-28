N,M = map(int,input().split())
c = '.|.'
top_bottom_half = N // 2
for row in range(top_bottom_half):
    middle_string = c*((row*2) + 1)
    print(middle_string.center(M,'-'))
    
print('WELCOME'.center(M,'-'))

for row in range(top_bottom_half):
    middle_string = c*((row*-2)+(2*top_bottom_half-1))
    print(middle_string.center(M,'-'))