'''
find captain's room using sets and list comprehension
group_size = int(input())
rm_num_list = input().split()

people_per_group = len(rm_num_list) // group_size

rm_nums = set(rm_num_list)

min_occ = min([rm_num_list.count(x) for x in rm_nums])

cap_rm = [x for x in rm_nums if rm_num_list.count(x) == min_occ]

print(*cap_rm)
'''
#Find captain's rm using lists and Counter.most_common()
from collections import Counter

group_size = int(input())
rm_num_list = input().split()

people_per_group = len(rm_num_list) // group_size
counter = Counter(rm_num_list)
cap_rm = counter.most_common()[-1][0]
print(cap_rm)