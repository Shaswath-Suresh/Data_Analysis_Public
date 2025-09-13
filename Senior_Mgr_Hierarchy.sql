SELECT mgrs.manager_name, COUNT(DISTINCT mgrs.emp_id) AS direct_reportees
FROM employees e 
JOIN employees mgrs ON e.manager_id = mgrs.emp_id
JOIN employees mgrs_2 ON mgrs.manager_id = mgrs_2.emp_id
GROUP BY mgrs.manager_name
ORDER BY direct_reportees DESC