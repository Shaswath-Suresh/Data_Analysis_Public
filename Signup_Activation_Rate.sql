SELECT ROUND(
    COUNT(DISTINCT e.user_id)::NUMERIC / 
    (SELECT COUNT(DISTINCT user_id) FROM emails),2) AS confirm_rate --Use nested query to get total users signed up, agnostic of text status
-- Right JOIN because confirmed texts will appropriately filter for the count of confirmed users 
FROM emails e RIGHT JOIN texts t ON e.email_id = t.email_id
WHERE t.signup_action = 'Confirmed'