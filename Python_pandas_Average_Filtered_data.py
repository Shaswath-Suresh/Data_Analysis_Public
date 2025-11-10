# access datasets as pandas dataframes
import pandas as pd;
inventory = pd.DataFrame()
inventory.head()

sold_inventory = inventory[(inventory["bike_price"].notnull()) & (inventory['bike_sold'] == 'Y')]

round(sold_inventory["bike_price"].mean(),2)