#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the solve function below.
def solve(s):
    l = list(map(str.capitalize, s.split(sep = ' '))) #converts input into list with cpaitalize method applied to all elements
    result = ''
    #for loop to separate list elements into string with a space
    for word in l:
        result += word + ' '
    return result.removesuffix(' ') #removes the extra space leftover from the for loop
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = solve(s)

    fptr.write(result + '\n')

    fptr.close()
