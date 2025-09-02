def print_rangoli(size):
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    width = 2*((size-1)*2) + 1
    #Top half nested for loop
    for i in range(size):
        middlestring = alphabet[size-1]
        for j in range(i):
            middlestring +='-' + alphabet[size-1 - (j+1)]
        for k in range(i):
            middlestring += '-' + alphabet[size - (i-k)]
        print(middlestring.center(width, '-'))
        
    #Bottom half nested for loop
    for i in reversed(range(size - 1)):
        middlestring = alphabet[size-1]
        for j in range(i):
            middlestring +='-' + alphabet[size-1 - (j+1)]
        for k in range(i):
            middlestring += '-' + alphabet[size - (i-k)]
        print(middlestring.center(width, '-'))
    return

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)