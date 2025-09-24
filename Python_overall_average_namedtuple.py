# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import namedtuple 

n=input() #total number of students
student=namedtuple('student',input().split()) #defines student namedtuple -> ID, Marks, Name, Class

Students=[student(*input().split()) for _ in range(int(n))] #makes a list of n named tuples using *input().split() 

print(round(sum(int(i.MARKS) for i in Students)/int(n),2)) #prints the average of all students' scores rounded to two decimal places