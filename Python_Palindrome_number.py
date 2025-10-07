for i in range(1,int(input())+1): #More than 2 lines will result in 0 score. Do not leave a blank line also
    '''
    using .str method
    l_list = [str(num+1) for num in range(i)]
    r_list = l_list[::-1][1:]
    result = ''.join(l_list) + ''.join(r_list)
    print (result)
    '''
    #Using math
    print ((pow(10,i) // 9) ** 2 )