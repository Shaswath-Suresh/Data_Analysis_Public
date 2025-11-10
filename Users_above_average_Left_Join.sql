SELECT
first_name
FROM user_time ut JOIN users u USING(user_id)
WHERE media_time_minutes > (SELECT AVG(media_time_minutes) FROM user_time)
ORDER BY first_name