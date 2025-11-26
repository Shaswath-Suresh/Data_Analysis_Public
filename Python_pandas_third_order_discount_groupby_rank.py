# access datasets as pandas dataframes
import pandas as pd;
purchases = pd.DataFrame()
#create rank on customer's transactions using .groupby() and .rank()
purchases['rk'] = purchases.groupby('customer_id')['transaction_id'].rank()

#make subselection based on third purchases per customer
correct_transactions = purchases[purchases['rk'] == 3].copy()
#Then add discount column
correct_transactions['discounted_amount'] = round(correct_transactions['amount'] * 0.67,2)
#final sorted output
correct_transactions[['customer_id', 'transaction_id', 'amount', 'discounted_amount']].sort_values('customer_id')