SELECT
r.contest_id,
--Don't forget the power of simple nested query for basic aggregations
ROUND(100.0 * COUNT(DISTINCT r.user_id) / (SELECT COUNT(DISTINCT user_id) FROM users),2) percentage -- COUNT(DISTINCT...), not DISTINCT COUNT(...)
FROM register r
GROUP BY contest_id
ORDER BY percentage DESC, r.contest_id