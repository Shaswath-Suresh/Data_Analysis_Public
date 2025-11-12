# access datasets as pandas dataframes
import pandas as pd;
from datetime import datetime

customers = pd.DataFrame()
customers.head()

customers['birth_date'] = pd.to_datetime(customers['birth_date'], format = '%m/%d/%Y')

current_date = datetime.strptime('1/1/2023','%m/%d/%Y')
customers['age'] = (current_date - customers['birth_date']).dt.days // 365

customers[(customers['age'] >= 55)][['customer_id']].sort_values('customer_id')

