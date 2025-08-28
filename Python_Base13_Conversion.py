def convertToBase13(num):
  result=''
  base13 = '0123456789ABC'
  pos_num = abs(num)
  
  if num == 0:
    return '0'
  while pos_num > 0:
    result += base13[pos_num % 13]
    pos_num = pos_num // 13
  
  reverse_string = result[::-1]
      
  if num < 0:
    return '-' + reverse_string 
  else:
    return reverse_string 