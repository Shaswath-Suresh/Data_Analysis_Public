-- Write your MySQL query statement below
-- Used chatgpt for regex
SELECT * FROM users
-- WHERE REGEXP_LIKE(mail, '^[A-Za-z][A-Za-z0-9._-]*@leetcode\.com$') would usualuuy work if not for faulty test cases
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$', 'c'); -- C toggles the case-sensitive match parameter