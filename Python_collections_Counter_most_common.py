from collections import Counter


if __name__ == '__main__':
    s = sorted(input())
    s_count = Counter(s)
    #list comprehension uses Counter.most_common(n) method to print the n most occurring chars of the sorted string
    [print(*entry) for entry in s_count.most_common(3)]