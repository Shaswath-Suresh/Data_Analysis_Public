-- Write your MySQL query statement below
WITH running_total AS (
    SELECT 
    person_name, 
    turn, 
    --Windows function syntax: OVER(PARTITION BY ... ORDER BY ... ROWS BETWEEN... [UNBOUNDED/n PRECEDING / CURRENT ROW AND UNBOUNDED/n FOLLOWING / CURRENT ROW])
    SUM(weight) OVER(ORDER BY turn ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) as total_weight
    FROM queue
)
SELECT person_name
FROM running_total
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1