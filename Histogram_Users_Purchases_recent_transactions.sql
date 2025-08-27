-- cte gets the most recent transaction date per user
WITH most_recent_transaction AS(
  SELECT user_id, MAX(transaction_date) recent
  FROM user_transactions
  GROUP BY user_id
)
-- Group BY on the count() serves as the histogram. The dates are filtered by the Join of the CTE and the WHERE clause
SELECT ut.transaction_date, ut.user_id, COUNT(ut.product_id)
FROM user_transactions ut 
LEFT JOIN most_recent_transaction mrt on ut.user_id = mrt.user_id
WHERE ut.transaction_date = mrt.recent
GROUP BY 1,2
ORDER BY 1,3; 