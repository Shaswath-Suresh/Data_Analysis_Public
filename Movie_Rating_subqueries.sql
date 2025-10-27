(SELECT
u.name as results
FROM MovieRating mr LEFT JOIN users u using (user_id)
GROUP BY mr.user_id, u.name
ORDER BY COUNT(mr.user_id) DESC, u.name ASC
LIMIT 1)

UNION ALL

(SELECT
m.title as results
FROM MovieRating mr LEFT JOIN movies m using (movie_id)
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY mr.movie_id, m.title
ORDER BY AVG(mr.rating) DESC, m.title ASC
LIMIT 1);