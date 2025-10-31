# access datasets as pandas dataframes
import pandas as pd;

customers = pd.DataFrame()

discount_customer = customers[(customers['age'] > 65) | (customers['total_purchase'] > 200)]

discount_customer.shape[0] #Gets you number of rows, equivalent of COUNT() in SQL
