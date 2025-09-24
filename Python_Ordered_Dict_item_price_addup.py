from collections import OrderedDict

N=int(input()) #gets number of items
item_dict=OrderedDict() #initialize the OrderedDict
for _ in range(N):
    line=input().split()
    item,price=' '.join(line[:-1]),int(line[-1]) #gets item (even if it's two words) and int(price)
    item_dict[item]=item_dict.get(item, 0)+int(price)

#Final output
for item,price in item_dict.items():
    print(item,price)