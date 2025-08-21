WITH cte_rank AS(
SELECT user_id, spend, transaction_date, RANK() OVER (PARTITION BY user_id ORDER BY transaction_date) AS ranked_date
FROM transactions
)
SELECT user_id, spend, transaction_date
FROM cte_rank
WHERE ranked_date = 3