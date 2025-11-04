# access datasets as pandas dataframes
import pandas as pd;
products = pd.DataFrame

products.head()
products['size_change_percentage'] = round(100*(products['new_size'] - products['original_size']) / products['original_size'])
products['price_change_percentage'] = round(100*(products['new_price'] - products['original_price'])/ products['original_price'])
products['shrinkflation_flag'] = (products['new_size'] < products['original_size']) & (products['new_price'] >= products['original_price'])
products['shrinkflation_flag'] = products['shrinkflation_flag'].map({True: 'True', False: 'False'})

products_sorted = products.sort_values(by='product_name', ascending = True)

products_sorted[['product_name', 'size_change_percentage', 'price_change_percentage', 'shrinkflation_flag']]