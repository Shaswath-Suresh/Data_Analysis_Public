#handling exceptions
t_c = int(input())

for test in range(t_c):
    try:
        a,b = map(int, input().split())
        print (int(a/b))
    except ZeroDivisionError:
        print("Error Code: integer division or modulo by zero")
    except ValueError as e:
        print("Error Code:",e)
