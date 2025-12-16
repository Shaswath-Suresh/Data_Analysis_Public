import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    # Filter customers who have not placed any orders
    res = customers[~customers['id'].isin(orders['customerId'])] # ~ negates the boolean result from customers['id].isin(...)
    # Select the 'name' column and rename it to 'Customers'
    res = res[['name']].rename(columns={'name': 'Customers'})
    return res