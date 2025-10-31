# access datasets as pandas dataframes
import pandas as pd;

employees = pd.DataFrame

#converting birthdate to age
employees['birth_date'] = pd.to_datetime(employees['birth_date'])
#sort df by birthdate in ascending order
employees = employees.sort_values('birth_date')
#Output first three ids of sorted table
employees[['employee_id']].head(3)