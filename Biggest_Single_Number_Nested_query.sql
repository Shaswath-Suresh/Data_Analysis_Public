-- Write your MySQL query statement below
-- No need for outer FROM clause, since we are coalescing a subquery in SELECT statement
SELECT COALESCE((SELECT num FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
    ORDER BY num DESC
    LIMIT 1), null) num