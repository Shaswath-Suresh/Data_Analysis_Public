#!/bin/python3

import math
import os
import random
import re
import sys

# Main entry point
if __name__ == '__main__':
    nm = input().split()  # Read n and m

    n = int(nm[0])        # Number of rows
    m = int(nm[1])        # Number of columns

    arr = []

    for _ in range(n):
        arr.append(list(map(int, input().rstrip().split())))  # Read each row

    k = int(input())      # Column index to sort by
    
    #For each row x in arr, lambda function returns the value at index k -> (k-th column).
    #this informs the key argument for the .sort method
    arr.sort(key=lambda x: x[k])  # Sort rows by k-th column. 
    for i in range(n):
        print(*arr[i])    # Print sorted rows