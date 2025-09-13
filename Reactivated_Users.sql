WITH cte AS(
  SELECT 
    user_id,
    DATE_PART('month', login_date) AS mth,
    LAG(DATE_PART('month', login_date)) OVER (PARTITION BY user_id ORDER BY login_date) AS prev_mth
  FROM user_logins 
  ORDER BY login_date
)
SELECT mth, COUNT(DISTINCT user_id)
FROM cte
WHERE prev_mth IS NULL OR mth > (prev_mth + 1)
GROUP BY mth