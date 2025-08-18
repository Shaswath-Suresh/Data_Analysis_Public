
if __name__ == '__main__':
    records = [] #creating th nested list
    for _ in range(int(input())):
        name = input()
        score = float(input())
        records.append([name, score])
    
    sec_low = sorted(set(i[1] for i in records))[1] #finding the second lowest value using a sorted(set()) on the array
    for inner in sorted(records): #sorted() on the nested list sorts by the first element of the inner lists by default
        for val in inner:
            if val != sec_low: #Looping through the nested list. Because the inner lists is [name,score], if the element matches the store, the name variable is printed
                name = val
            else:
                print(name)