-- Write your MySQL query statement below
SELECT DISTINCT e1.employee_id,
COALESCE(e2.department_id, e1.department_id) department_id
FROM employee e1 LEFT JOIN employee e2 ON e1.employee_id = e2.employee_id AND e1.primary_flag <> e2.primary_flag
WHERE e2.primary_flag = 'Y' or e2.primary_flag IS NULL