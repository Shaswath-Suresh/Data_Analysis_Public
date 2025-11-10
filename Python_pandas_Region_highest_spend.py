# access datasets as pandas dataframes
import pandas as pd;
food_regions = pd.DataFrame()

food_regions.head()
#reset_index keeps the region column after the group by operation
#nlargest returns the row with the max fast food spend
most_spent = food_regions.groupby("region").agg('sum')\
    .reset_index().nlargest(1,'fast_food_millions') #
#we only care about the region
most_spent[['region']]