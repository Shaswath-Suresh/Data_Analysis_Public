-- Write your MySQL query statement below
WITH cte AS (
    (SELECT requester_id AS id FROM RequestAccepted) UNION ALL (SELECT accepter_id AS id FROM RequestAccepted)
),

max_cte AS(
    SELECT
    id, COUNT(*) AS num
    FROM cte
    GROUP BY id
    ORDER BY num DESC
    LIMIT 1
)
SELECT
    id, COUNT(*) AS num
    FROM cte
    GROUP BY id
    HAVING num  = (SELECT num FROM max_cte)