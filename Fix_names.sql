SELECT user_id,
CONCAT(UPPER(LEFT(name,1)), LOWER(RIGHT(name, LENGTH(name)-1))) AS name
FROM Users

-- Or use SUBSTR
/*SELECCT user_id,
CONCAT(UPPER(SUBSTR(name,1,1)), LOWER(SUBTR(name,2,LENGTH(name)))) AS name
FROM users
ORDER BY user_id
*/