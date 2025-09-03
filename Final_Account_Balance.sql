SELECT
account_id,
--Using sum(amount) FILTER(WHERE...) to apply positive and negative values where necessary
SUM(amount) FILTER (WHERE transaction_type = 'Deposit') + -1 * SUM(amount) FILTER (WHERE transaction_type = 'Withdrawal') AS final_balance
FROM transactions
--group by gets the account balance per account
GROUP BY account_id
-- Alternately, you can wrap SUM() around a CASE WHEN ... THEN clause, where ELSE would be -amount