WITH top_3_salary AS(
  SELECT DISTINCT
    department_id,
    salary,
    -- use dense_rank so that rank value doesn't skip for employees with same salary
    dense_rank() OVER (PARTITION BY department_id ORDER BY salary DESC) AS dep_sal_rank
  FROM employee
  ORDER BY department_id ASC, salary DESC
)
SELECT
  d.department_name, e.name, t3.salary
FROM top_3_salary t3 
LEFT JOIN employee e ON t3.department_id = e.department_id AND t3.salary = e.salary
LEFT JOIN department d ON t3.department_id = d.department_id
WHERE t3.dep_sal_rank <= 3
ORDER BY d.department_name ASC ,salary DESC, e.name ASC