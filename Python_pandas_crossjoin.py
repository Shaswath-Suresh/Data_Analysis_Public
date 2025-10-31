import pandas as pd
bread_table = pd.DataFrame
meat_table = pd.DataFrame

#option 1
bread_meats = pd.merge(bread_table.assign(key=1), meat_table.assign(key=1), on='key').drop('key', axis=1)
bread_meats[['bread_name', 'meat_name']].sort_values(by=['bread_name', 'meat_name'])

#or option 2
bread_table.merge(meat_table, how = 'cross')[['bread_name','meat_name']].sort_values(by=['bread_name','meat_name'])