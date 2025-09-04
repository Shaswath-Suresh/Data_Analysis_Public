def minion_game(string):
    vowels = 'aeiou'.upper()
    
    stuart = kevin = 0
    length = len(string)
    count = 0
    for c in string:
        if c in 'AEIOU':
            kevin += (length - count)
        else:
            stuart += (length - count)
        # string = string[1:]
        count += 1

    if (kevin > stuart):
        print(f'Kevin {kevin}')
    elif (stuart > kevin):
        print(f'Stuart {stuart}')
    else:
        print('Draw')

s = input()
minion_game(s)
