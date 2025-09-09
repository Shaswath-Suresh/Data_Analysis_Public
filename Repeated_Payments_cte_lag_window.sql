WITH cte AS(
  SELECT merchant_id, credit_card_id, amount, transaction_timestamp,
  LAG(transaction_timestamp) OVER (PARTITION BY merchant_id, credit_card_id, amount ORDER BY transaction_timestamp) AS prev_time
  FROM transactions
)

SELECT COUNT(merchant_id) as payment_count
FROM cte
WHERE transaction_timestamp - prev_time <= INTERVAL '10 minutes'