WITH cte_send AS(
  SELECT ab.age_bucket, a.activity_type, SUM(a.time_spent) AS time_spent
  FROM activities a LEFT JOIN age_breakdown ab ON a.user_id = ab.user_id
  WHERE a.activity_type ='send'
  GROUP BY 1,2
  ),
cte_open AS(
  SELECT ab.age_bucket, a.activity_type, SUM(a.time_spent) AS time_spent
  FROM activities a LEFT JOIN age_breakdown ab ON a.user_id = ab.user_id
  WHERE a.activity_type ='open'
  GROUP BY 1,2
  )
SELECT cs.age_bucket, 
ROUND(cs.time_spent / (cs.time_spent + co.time_spent) * 100.0,2) AS send_perc,
ROUND(co.time_spent / (cs.time_spent + co.time_spent) * 100.0,2) AS open_perc

FROM cte_send cs 
JOIN cte_open co ON cs.age_bucket = co.age_bucket
ORDER BY cs.age_bucket