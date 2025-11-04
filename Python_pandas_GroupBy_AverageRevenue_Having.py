# access datasets as pandas dataframes
import pandas as pd;

stores.head
# perform the group by and aggregate the revenue column with mean(). reanme the columns
stores_grouped = stores.groupby('store_id')['revenue'].mean().reset_index().rename(columns={'revenue': 'avg_yearly_revenue'})

#Round the value
stores_grouped['avg_yearly_revenue'] = stores_grouped['avg_yearly_revenue'].round(2)

#Get the high revenue stores
high_revenue_stores = stores_grouped[stores_grouped['avg_yearly_revenue'] > 1000000]
high_revenue_stores