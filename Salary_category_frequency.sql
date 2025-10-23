-- Write your MySQL query statement below
/* Histogram approach
WITH cte AS (
    SELECT account_id,
        CASE 
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income <= 50000 THEN 'Average Salary'
            ELSE 'High Salary' END
        AS category
    FROM accounts
)
SELECT category, COUNT(*)
FROM cte
GROUP BY category
*/
-- Union All approach
SELECT 'Low Salary' category, COUNT(CASE WHEN income < 20000 THEN 1 END) AS accounts_count FROM accounts
UNION ALL
SELECT 'Average Salary' category, COUNT(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 END) AS accounts_count FROM accounts
UNION ALL
SELECT 'High Salary' category, COUNT(CASE WHEN income > 50000 THEN 1 END) AS accounts_count FROM accounts