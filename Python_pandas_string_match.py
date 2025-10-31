# access datasets as pandas dataframes
import pandas as pd;
bakery_items = pd.DataFrame

bakery_items.head()
bakery_items[bakery_items['product_name'].str.contains('Chocolate', case=False, na = False)]
