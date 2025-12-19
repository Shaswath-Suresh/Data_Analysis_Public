import pandas as pd

def sales_person(sales_person: pd.DataFrame, company: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    # Filter orders to get sales IDs associated with the company named 'RED'
    red_orders_company = pd.merge(orders, company[company['name'] == 'RED'], on='com_id', how='inner')['sales_id'].unique()

    # Select sales persons whose sales IDs are NOT in the red orders
    res = sales_person[~sales_person['sales_id'].isin(red_orders_company)]

    # Return only the names of the filtered sales persons
    return res[['name']]