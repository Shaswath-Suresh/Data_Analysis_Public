# access datasets as pandas dataframes
import pandas as pd;
direct_reports = pd.DataFrame()
direct_reports.head()

# obtain manager rows
managers = direct_reports[direct_reports['position'].str.contains('Manager')]

#Perform Count agg function per manager with .size()
direct_reports = direct_reports.groupby('managers_id').size().reset_index(name = 'direct_reports')

#Perform the equivalent of a self_join. LEFT JOIN here as opposed to Inner join in SQL
manager_reports = managers.merge(direct_reports, left_on = 'employee_id', right_on = 'managers_id', how ='left')

#select and rename columns
manager_reports[['employee_id', 'position', 'direct_reports']]\
.rename(columns = {'employee_id':'manager_id', 'position':'manager_position'})