--Even and odd is based on the nth observation made on a given day, not the measurement ID number
WITH even_odd AS (
SELECT measurement_id, measurement_time::DATE AS measurement_day,
  ROW_NUMBER() OVER(PARTITION BY measurement_time::DATE ORDER BY measurement_time ) AS measure_count
FROM measurements
)
SELECT 
  measurement_day,
  SUM(CASE
    WHEN MOD(measure_count,2) = 1 THEN 1 * measurement_value ELSE 0 END) AS odd_sum,
  SUM(CASE
    WHEN MOD(measure_count,2) = 0 THEN 1 * measurement_value ELSE 0 END) AS even_sum
FROM measurements JOIN even_odd ON measurements.measurement_id = even_odd.measurement_id
GROUP BY measurement_day
ORDER BY measurement_day

--Really gotta work on AGG(...) FILTER(WHERE....) logic -> comes in handy
/* or use 
SELECT 
  measurement_day, 
  SUM(measurement_value) FILTER (WHERE measurement_num % 2 != 0) AS odd_sum, 
  SUM(measurement_value) FILTER (WHERE measurement_num % 2 = 0) AS even_sum 
FROM cte
GROUP BY measurement_day;

for the main query */