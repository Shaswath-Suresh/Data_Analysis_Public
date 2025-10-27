-- Write your MySQL query statement below
WITH cte AS(
    SELECT
    visited_on, 
    SUM(amount) daily_total
    FROM customer
    GROUP BY visited_on
    ORDER BY visited_on
),
cte_2 AS(
    SELECT
    visited_on, 
    SUM(daily_total) OVER (ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS running_total
    FROM cte
)
SELECT
visited_on, running_total AS amount, ROUND((running_total / 7),2) AS average_amount
FROM cte_2
WHERE visited_on - INTERVAL 6 DAY IN (SELECT visited_on FROM customer)