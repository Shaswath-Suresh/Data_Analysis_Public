WITH cte AS (
  SELECT EXTRACT(YEAR FROM call_date::date) as yr,
  EXTRACT(MONTH FROM call_date::date) as mth,
  COUNT(case_id) AS call_count
  FROM callers
  WHERE call_duration_secs > 300
  GROUP BY yr,mth
  ORDER BY yr,mth
)
SELECT yr, mth, 
ROUND(100.0 * (call_count - LAG(call_count) OVER(ORDER BY yr,mth)) / LAG(call_count) OVER(ORDER BY yr,mth),1) AS long_calls_growth_pct
FROM cte