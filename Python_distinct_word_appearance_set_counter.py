from collections import Counter

num_words = int(input())
l = [input() for word in range(num_words)]

l_counter = Counter(l)
#output number of distinct elements
#output the number of occurrences for each distinct word, in order of their appearance
print(len(set(l)))
print(*l_counter.values())
