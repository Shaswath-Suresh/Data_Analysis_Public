def swap_case(s):
    new_s = ''
    for letter in s:
        if letter.islower():
            new_s += letter.upper()
        elif letter.isupper():
            new_s += letter.lower()
        else:
            new_s += letter
    return new_s
    # OR
    #return s.swapcase() -> dedicated built-in method for swapping cases of a string

if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)