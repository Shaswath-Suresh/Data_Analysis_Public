WITH mau AS(
SELECT user_id users,
  MAX(EXTRACT (MONTH FROM event_date :: DATE)) AS current_month,
  COUNT(DISTINCT EXTRACT(MONTH FROM event_date ::DATE)) AS count_month
FROM user_actions
WHERE event_date BETWEEN '2022-06-01' AND '2022-08-01'
GROUP BY 1
HAVING COUNT(DISTINCT EXTRACT(MONTH FROM event_date ::DATE)) > 1
)
SELECT current_month AS month, COUNT(DISTINCT users) AS monthly_active_users
FROM mau
GROUP BY current_month