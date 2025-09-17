WITH
  cte1 AS (
    SELECT lat_n, 
    percent_rank() OVER(ORDER BY lat_n) pct 
    FROM station
)
SELECT ROUND(lat_n,4) 
FROM cte1 
WHERE pct=.5