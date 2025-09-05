import textwrap
from collections import OrderedDict
'''
chunks = textwrap.wrap('aabccdeef',3)
print(chunks)
for c in chunks:
    print(''.join(OrderedDict.fromkeys(c)))
'''
def merge_the_tools(s, k):
    chunks = textwrap.wrap(s, k)
    for c in chunks:
        print("".join(OrderedDict.fromkeys(c)))

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)
