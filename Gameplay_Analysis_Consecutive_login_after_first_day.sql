# Write your MySQL query statement below
/*WITH cte AS (
    SELECT player_id, 
    MIN(event_date) OVER (PARTITION BY player_id) first_login, 
    LEAD(event_date) OVER (PARTITION BY player_id) AS next_login
    FROM activity
)
SELECT ROUND(COUNT(DISTINCT player_id)  / (SELECT COUNT(DISTINCT player_id) FROM cte),2) AS fraction
FROM cte 
WHERE DATE_ADD(first_login, INTERVAL 1 DAY) = next_login
*/

SELECT ROUND(COUNT(DISTINCT player_id)  / (SELECT COUNT(DISTINCT player_id) FROM activity),2) AS fraction
FROM activity a1
-- a tuple in SQL WHERE...IN... clause, interesting
WHERE (a1.player_id, DATE_SUB(a1.event_date, INTERVAL 1 DAY)) IN
    (SELECT
        a2.player_id,
        MIN(a2.event_date)
    FROM activity a2
    GROUP BY a2.player_id
    ) 





