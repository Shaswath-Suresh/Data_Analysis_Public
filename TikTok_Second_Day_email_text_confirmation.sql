SELECT e.user_id
FROM emails e LEFT JOIN texts t ON e.email_id = t.email_id
WHERE t.signup_action = 'Confirmed' AND e.signup_date::DATE + INTERVAL '1 day' = t.action_date::DATE;