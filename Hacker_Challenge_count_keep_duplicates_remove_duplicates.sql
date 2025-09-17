WITH cte1 AS(
    SELECT h.hacker_id, 
    h.name, 
    COUNT(c.challenge_id) challenges_created,
    COUNT(COUNT(c.challenge_id)) OVER(PARTITION BY COUNT(c.challenge_id)) AS duplicates
    FROM hackers h LEFT JOIN challenges c ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name
)
SELECT hacker_id, name,challenges_created
FROM cte1
WHERE duplicates < 2 OR challenges_created = (SELECT MAX(challenges_created) FROM cte1)
ORDER BY challenges_created DESC, hacker_id;