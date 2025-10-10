# Write your MySQL query statement below
WITH cte AS (
    SELECT
    customer_id,
    MIN(order_date) first_order_date,
    MIN(customer_pref_delivery_date) first_dd
    FROM delivery
    GROUP BY customer_id
)
SELECT
ROUND(100.0 * 
SUM(
    CASE -- Case statement does not have opening/closing parentheses
        WHEN first_order_date = first_dd 
        THEN 1 
        ELSE 0 END
) / 
(SELECT COUNT(*) FROM cte),2) AS immediate_percentage
FROM cte;