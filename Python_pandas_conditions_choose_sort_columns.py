# access datasets as pandas dataframes
import pandas as pd;

inspections = pd.DataFrame()
inspections.head()
#find vehicles that passed by  having fewer incedents than specified fail criteria
inspections[(inspections["minor_issues"] <= 3) & (inspections["critical_issues"] == 0)
][['owner_name', 'vehicle']].sort_values('owner_name') #choose columsn, and then specify the sort column
