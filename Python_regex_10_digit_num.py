#Regex 10 digit number that starts with 7,8,or 9
#set the pattern as a variable
import re

pattern = r'^\d{10}$'

for _ in range(int(input())):
    num = input()
    if re.search(pattern, num) and num[0] in ('7', '8','9'):
        print('YES')
    else:
        print('NO')