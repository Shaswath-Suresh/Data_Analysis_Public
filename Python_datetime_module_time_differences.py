#!/bin/python3

import os

from datetime import datetime

# Complete the time_delta function below.
def time_delta(t1, t2):
    fmt = "%a %d %b %Y %H:%M:%S %z"
    t1_fmt = datetime.strptime(t1,fmt)
    t2_fmt = datetime.strptime(t2,fmt)
    
    delta_t1_t2 = t1_fmt-t2_fmt
    
    return str(abs(int(delta_t1_t2.total_seconds())))
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input())

    for t_itr in range(t):
        t1 = input()

        t2 = input()

        delta = time_delta(t1, t2)

        fptr.write(delta + '\n')

    fptr.close()