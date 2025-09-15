WITH cte AS (
  SELECT server_id, 
  session_status, 
  status_time AS session_start,
  LEAD(status_time) OVER(PARTITION BY server_id ORDER BY status_time) AS session_end
  FROM server_utilization
  ORDER BY server_id, status_time
)

SELECT
FLOOR((EXTRACT(DAY FROM SUM(session_end - session_start)) * 24 + EXTRACT(HOUR FROM SUM(session_end - session_start))) 
/ 24) AS total_uptime_days
FROM cte
WHERE session_status = 'start'