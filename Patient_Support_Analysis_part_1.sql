WITH cte AS (
  SELECT policy_holder_id, COUNT(case_id) AS cases
  FROM callers
  GROUP BY policy_holder_id
  HAVING COUNT(case_id) >= 3
)
SELECT COUNT(DISTINCT policy_holder_id) AS policy_holder_count
FROM cte