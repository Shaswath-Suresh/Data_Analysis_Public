SELECT dr_m.employee_id, 
  dr_m.position, 
  COUNT(dr_r.employee_id) reports
FROM direct_reports dr_m 
  JOIN direct_reports dr_r ON dr_m.employee_id = dr_r.managers_id
WHERE dr_m.position LIKE '%Manager'
GROUP BY dr_m.employee_id, dr_m.position