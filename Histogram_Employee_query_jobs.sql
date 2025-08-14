--Histogram that also counts employees who did not run any queries.
with count_queries AS(
SELECT e.employee_id,
COALESCE(COUNT(DISTINCT q.query_id),0) AS total_queries
FROM employees e LEFT JOIN queries q ON e.employee_id = q.employee_id
/*From Solution: apply date condition to FROM clause. 
Do not use WHERE if you want to keep the coalesced zeros.*/
AND q.query_starttime BETWEEN '2023-07-01' AND '2023-10-01' 
GROUP BY e.employee_id
)
SELECT 
total_queries,
COUNT(employee_id) employee_count
FROM count_queries
GROUP BY total_queries
ORDER BY total_queries
