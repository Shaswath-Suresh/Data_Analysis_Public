def is_same_stripes(matrix):
	#step 1: create a dictionary for quick O(1) access
    same_diagonal_elements = {}
	for i in range(len(matrix)):
	    for j in range(len(matrix[0])):
	    #checks if key exists in dictionary and if the value is equal to that diagonal's value. If the latter is false, then your 'stripe' is not uniform
	        if i - j in same_diagonal_elements and same_diagonal_elements[i-j] != matrix[i][j]:
	            return False
			else:
	            #adding the diagonal key to your dictionary if new and setting it's value to the first val in that diagonal
                same_diagonal_elements[i-j] = matrix[i][j]
    return True