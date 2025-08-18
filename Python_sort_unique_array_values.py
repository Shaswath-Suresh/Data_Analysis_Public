if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    
    #set(iterable) returns an unorderd list of the unique values of the iterable
    #sorted(iterable returns an order list of the iterable)
    #[-2] -> reverse indexing will find the second highest value regardless of array length
    print(sorted(set(arr))[-2])