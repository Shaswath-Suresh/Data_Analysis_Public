WITH rank_cte AS (
  SELECT customer_id, transaction_id, amount, amount * 0.67 AS discounted_amount, 
  RANK() OVER (PARTITION BY customer_id ORDER BY transaction_id) rk_order
  FROM purchases
)

SELECT
customer_id, transaction_id, amount, discounted_amount
FROM rank_cte
WHERE rk_order = 3
ORDER BY customer_id