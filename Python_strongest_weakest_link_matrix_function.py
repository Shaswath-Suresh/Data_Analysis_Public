def weakest_strong_link(strength):
  #problem: givena  matrix, identify the "weakest strong link" -> defined as the element that is the highest in its column AND the lowest in its row
  
  #first, get m and n values for row/column for-loop counters
  m = len(strength)
  n = len(strength[0])
  
  #initialize min rows and max_cols vals for the weakest strong link problem
  min_rows = [0] * m 
  max_cols = [0] * n
  
  #Fin the minimums of each row
  for i in range(m):
    min_rows[i] = min(strength[i])
  
  #finding the maximum in each column with nested for loop to fill out max_cols
  for j in range(n):
    cur_max = 0
    for i in range(m):
      cur_max = max(cur_max, strength[i][j])
    max_cols[j] = cur_max
  
  #Nested for loop to find the weakest strongest link, aka the intersection of the min_rows and max_cols
  for i in range(m):
    for j in range(n):
      if strength[i][j] == min_rows[i] and strength [i][j] == max_cols[j]:
        return strength [i][j]
  
  return -1