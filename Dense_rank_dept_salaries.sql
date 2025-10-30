-- Write your MySQL query statement below
WITH unique_salaries_rank AS (
    SELECT d.name Department, 
    e.salary Salary, 
    e.name Employee, 
    DENSE_RANK() OVER (PARTITION BY d.id ORDER BY e.salary DESC) AS rk
    FROM employee e JOIN department d ON e.departmentid = d.id
)
SELECT 
Department, 
Employee, 
Salary
FROM unique_salaries_rank rk
WHERE rk.rk <= 3