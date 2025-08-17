if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
    
    arrays = []
    
    list_x = [i for i in range(x+1)]
    list_y = [j for j in range(y+1)]
    list_z = [k for k in range(z+1)]
    
    for i in list_x:
        for j in list_y:
            for k in list_z:
                if (i + j + k) != n:
                    arrays.append([i,j,k])
    
    print(arrays)