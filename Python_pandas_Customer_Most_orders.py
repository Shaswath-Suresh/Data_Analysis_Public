import pandas as pd

def largest_orders(orders: pd.DataFrame) -> pd.DataFrame:
    res = orders.groupby('customer_number').size().reset_index(name = 'count') #size is the agg-funciton equivalent of COUNT in SQL

    res = res.sort_values(by='count', ascending = False)

    return res.head(1)[['customer_number']]