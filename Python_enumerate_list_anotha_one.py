def another_one(digits):
  num = 0
  
  #For loop consolidates digit list into its number back to front using power of 10 logic
  for index, digit in enumerate(digits[::-1]):
    num += 10**index * digit
  #adding anotha one
  num += 1 
  #splitting new number into a list of digits
  res = [int(digit) for digit in str(num)]
  
  return res