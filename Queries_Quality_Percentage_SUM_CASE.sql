# Write your MySQL query statement below
/*Bad solution -> time intensive
SELECT
    query_name,
    ROUND(AVG(rating / position),2) quality,
    ROUND(100.0 * (SELECT COUNT(*) 
                FROM queries q_inner 
                WHERE q_inner.rating < 3 AND q_inner.query_name = q_outer.query_name) / COUNT(*), 2) poor_query_percentage
FROM
queries q_outer
GROUP BY query_name 
*/

#Simple solution with SUM(CASE...) and GROUP BY
SELECT
query_name, 
ROUND(AVG(rating / position), 2) quality,
#Use SUM(CASE WHEN condition THEN 1 ELSE 0 END) to add up rows that meet that condition
ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) poor_query_percentage
FROM queries
GROUP BY query_name;