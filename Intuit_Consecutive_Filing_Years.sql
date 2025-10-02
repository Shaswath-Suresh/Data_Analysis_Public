WITH cte AS (
SELECT user_id, 
EXTRACT(YEAR FROM filing_date::DATE) AS year,
LAG(EXTRACT(YEAR FROM filing_date::DATE)) OVER(PARTITION BY user_id ORDER BY filing_date) prev,
LEAD(EXTRACT(YEAR FROM filing_date::DATE)) OVER(PARTITION BY user_id ORDER BY filing_date) next
FROM filed_taxes
WHERE product ILIKE '%turbotax%'
ORDER BY user_id
)

SELECT DISTINCT user_id
FROM cte 
WHERE prev IS NOT NULL AND next IS NOT NULL
ORDER BY user_id;