SELECT *,
  CASE WHEN pay_level = 1 THEN salary * 1.1
  WHEN pay_level = 2 THEN salary * 1.15
  ELSE
    salary * 3 -- 200% increase means value * 3
  END AS new_salary
FROM employees