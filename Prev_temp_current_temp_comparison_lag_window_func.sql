WITH temp_cte AS (
  SELECT 
    date, temperature,
    LAG(temperature) OVER (ORDER BY date) prev_temp
    FROM temperatures
)
SELECT date 
FROM temp_cte
WHERE temperature > prev_temp
ORDER BY date
