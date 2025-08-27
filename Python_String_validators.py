if __name__ == '__main__':
    s = input()
    '''Yucky brute force
    alnum = False
    alpha = False
    dig = False
    lc = False
    uc = False
    for letter in s:
        if letter.isalnum():
            alnum = True
        if letter.isalpha():
            alpha = True
        if letter.isdigit():
            dig = True
        if letter.islower():
            lc = True
        if letter.isupper():
            uc = True
    
    print(alnum)
    print(alpha)
    print(dig)
    print(lc)
    print(uc)
    '''
    print(any(map(str.isalnum, s)))
    print(any(map(str.isalpha, s)))
    print(any(map(str.isdigit, s)))
    print(any(map(str.islower, s)))
    print(any(map(str.isupper, s)))
    
