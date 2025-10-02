def wrapper(f):
    def fun(l):
        # complete the function
        new = []
        for num in l:
            l_new = num[-10:]
            new.append('+91 ' + l_new[:5] + ' ' + l_new[-5:])
        return f(new)
    return fun

@wrapper
def sort_phone(l):
    print(*sorted(l), sep='\n')

if __name__ == '__main__':
    l = [input() for _ in range(int(input()))]
    sort_phone(l) 