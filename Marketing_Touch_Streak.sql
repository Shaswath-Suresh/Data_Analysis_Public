-- cte gets a column called the third_touch that is compared to the current row's event date
WITH CTE AS(
  SELECT contact_id, event_date, LEAD(event_date,2) OVER (PARTITION BY contact_id ORDER BY event_date) third_touch 
  FROM marketing_touches
)
SELECT cc.email
FROM CTE LEFT JOIN crm_contacts cc ON CTE.contact_id = cc.contact_id
WHERE third_touch - event_date > 8 
AND 
cc.contact_id IN (SELECT contact_id FROM marketing_touches WHERE event_type ='trial_request')

--The better answer formats the event_date with DATE_TRUNC('week',event_date) 
--and does math with INTERVAL '1 week'
/*
WITH CTE AS(
  SELECT contact_id, DATE_TRUNC('week',event_date) AS event_week,
  LAG(DATE_TRUNC('week',event_date)) OVER (PARTITION BY contact_id ORDER BY event_date) AS lag_event_week,
  LEAD(DATE_TRUNC('week',event_date)) OVER (PARTITION BY contact_id ORDER BY event_date) AS lead_event_week 
  FROM marketing_touches
)
SELECT cc.email
FROM CTE LEFT JOIN crm_contacts cc ON CTE.contact_id = cc.contact_id
WHERE lag_event_week = event_week  - INTERVAL '1 week'
AND 
lead_event_week = event_week + INTERVAL '1 week'
AND
cc.contact_id IN (SELECT contact_id FROM marketing_touches WHERE event_type ='trial_request')
*/