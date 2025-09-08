WITH cte AS (
  SELECT
    policy_holder_id,
    call_date,
    LEAD(call_date) OVER (PARTITION BY policy_holder_id ORDER BY call_date) AS next_call
  FROM callers
)

SELECT COUNT(DISTINCT policy_holder_id)
FROM cte 
WHERE next_call < call_date + INTERVAL '1 week'