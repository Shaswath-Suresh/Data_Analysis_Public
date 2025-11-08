# access datasets as pandas dataframes
import pandas as pd;

bad_data = pd.DataFrame

bad_data.head()
good_data = pd.DataFrame()
good_data['id'] = bad_data['id'].str[:5]
good_data['First_Name'] = bad_data['id'].str[5:]
good_data