# Write your MySQL query statement below
SELECT boss.employee_id, 
boss.name, 
COUNT(emp.employee_id) reports_count, 
ROUND(AVG(emp.age),0) AS average_age
FROM employees emp JOIN employees boss ON emp.reports_to = boss.employee_id
GROUP BY boss.employee_id, boss.name
ORDER BY boss.employee_id