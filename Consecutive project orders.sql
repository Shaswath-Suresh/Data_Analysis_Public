-- first cte extracts consecutive and non-consecutive end-dates in a new 'gap' column
WITH date_gap AS ( 
    SELECT task_id, startdate, end_date, datediff(end_date, lag(end_date) OVER(ORDER BY end_date)) AS gap 
    FROM projects 
    ), 
"""
second cte increments project_count by 1 for each distinct set of consecutive tasks
'grp' column applies CASE WHEN to 'gap' column within a SUM window function
Acts as a rolling total without use of 'ROWS BETWEEN n [UNBOUNDED]PRECEDING AND n [UNBOUNDED]FOLLOWING/CURRENT ROW')
"""
cte AS ( 
    SELECT
    task_id, 
    startdate, 
    end_date, 
    SUM(CASE WHEN gap > 1 OR gap IS NULL THEN 1 ELSE 0 END) OVER (ORDER BY end_date) AS grp

    FROM date_gap 
    GROUP BY task_id, startdate, end_date 
    ) 
-- now that we have 'project ids' we can get their respective earliest/last dates and sort by their duration with DATEDIFF(end, start)
SELECT 
    min(startdate) AS startdate, 
    max(end_date) AS end_date 
FROM cte 
GROUP BY grp 
ORDER BY DATEDIFF(MAX(end_date), MIN(startdate)), startdate 