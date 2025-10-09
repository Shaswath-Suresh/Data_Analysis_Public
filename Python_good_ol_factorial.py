def factorial(n):
    answer = 1
    for x in range(n, 0, -1):
        answer *= x
    return answer