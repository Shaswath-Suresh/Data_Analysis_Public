from itertools import groupby

seq = input()

for key,val in groupby(seq):
    print(tuple([len(list(val)), int(key)]),end=' ')