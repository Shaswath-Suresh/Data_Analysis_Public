# access datasets as pandas dataframes
import pandas as pd;

customers = pd.DataFrame()
customers.head()

percentage_with_membership = (customers[customers['has_member_card'] == 'Y'].shape[0] / customers[customers['kroger_id'].notnull()].shape[0]) * 100

round(percentage_with_membership,2)