# access datasets as pandas dataframes
import pandas as pd;

employees = pd.DataFrame()
employees.head()
# use.loc[]
'''
employees.loc[employees["pay_level"] == 1, "new_salary"] = employees['salary'] * 1.1
employees.loc[employees["pay_level"] == 2, "new_salary"] = employees['salary'] * 1.15
employees.loc[employees["pay_level"] == 3, "new_salary"] = employees['salary'] * 3

employees
'''
#or use lambda function
def pay_increase(pay_level, salary):
  if pay_level == 1:
    return salary * 1.1
  elif pay_level == 2:
    return salary * 1.15
  elif pay_level == 3:
    return salary * 3

# almost the dataframe equivalent of list comprehension. apply function row-wise -> x is each row
#axis = 1 to make sure that the lambda iterator, "scan", goes down columns, not across rows
employees["new_salary"] = employees.apply(lambda x:pay_increase(x.pay_level, x.salary), axis = 1)
employees