def average(array):
    # your code goes here
    unique_vals = set(array)
    return (sum(unique_vals)/len(unique_vals))
if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    result = average(arr)
    print(result)