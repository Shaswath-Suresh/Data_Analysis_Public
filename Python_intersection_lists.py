def intersection(a, b):
  #cheeky answer using dedicated function
  return list(set(a).intersection(set(b)))
  #other option with a list comprehension and the 'in' operator
  #intersection_list = [value for value in a if value in b] 