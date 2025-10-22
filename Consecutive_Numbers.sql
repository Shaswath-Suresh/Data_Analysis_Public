-- Write your MySQL query statement below
WITH cte AS (
    SELECT
    LAG(num) OVER(ORDER BY id) as prev,
    num,
    LEAD(num) OVER(ORDER BY id) as next
    FROM logs
)
SELECT DISTINCT num AS ConsecutiveNums FROM cte
WHERE num = prev AND prev = next