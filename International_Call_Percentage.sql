--CTE gets the counts with AGG()...FILTER (WHERE...) syntax
WITH call_count AS(
  SELECT COUNT(*) FILTER (WHERE pi_1.country_id <> pi_2.country_id) AS international_count,
  COUNT(*) AS total
  FROM phone_calls pc
  LEFT JOIN phone_info pi_1 ON pc.caller_id = pi_1.caller_id
  LEFT JOIN phone_info pi_2 ON pc.receiver_id = pi_2.caller_id
)
-- Main query performs the division to get the rounded percentage
SELECT ROUND(100.0 * international_count / total,1) AS international_calls_pct
FROM call_count