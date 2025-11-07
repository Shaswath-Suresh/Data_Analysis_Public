-- Write your MySQL query statement below
SELECT
p.product_name,
SUM(unit) AS unit
FROM orders o LEFT JOIN products p ON o.product_id = p.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29' -- account for some leap year orders
GROUP BY p.product_name
HAVING unit >= 100