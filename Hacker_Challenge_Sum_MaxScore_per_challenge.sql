WITH 
    cte1 AS (
        SELECT 
            hacker_id, 
            challenge_id, 
            MAX(score) hacker_challenge_max
        FROM submissions  
        GROUP BY hacker_id, challenge_id
)
SELECT 
    cte1.hacker_id,
    h.name,
    SUM(cte1.hacker_challenge_max) total_score
FROM cte1 LEFT JOIN hackers h ON cte1.hacker_id = h.hacker_id
GROUP BY cte1.hacker_id, h.name
HAVING SUM(cte1.hacker_challenge_max) > 0
ORDER BY total_score DESC, cte1.hacker_id
