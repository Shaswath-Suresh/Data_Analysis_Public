# access datasets as pandas dataframes
import pandas as pd;
customers = pd.DataFrame

customers.head()
#delimiter to extract first name from full name. Clean any leftover whitespace
customers['first_name'] = customers['full_name'].str.split(' ').str[0].str.strip()

customers[['customer_id', 'first_name']]