SELECT 
  COALESCE(a.user_id,dp.user_id) AS user_id,
  CASE 
    WHEN dp.paid IS NULL THEN 'CHURN'
    WHEN dp.paid IS NOT NULL AND a.status IN ('NEW', 'EXISTING', 'RESURRECT') THEN 'EXISTING'
    WHEN dp.paid IS NOT NULL AND a.status = 'CHURN' THEN 'RESURRECT'
    WHEN dp.paid IS NOT NULL AND a.status IS NULL THEN 'NEW'
  END AS new_status
FROM advertiser a 
FULL OUTER JOIN daily_pay dp on a.user_id = dp.user_id 
ORDER BY user_id