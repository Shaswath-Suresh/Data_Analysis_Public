-- Write your MySQL query statement below
-- A scalar subquery is a subquery (a query nested within another query) that returns a single value (a single row with a single column).
-- If the subquery returns no rows, the scalar subquery expression returns NULL. If the subquery returns more than one row, it returns an error
-- Hence the Double-SELECT
SELECT(
    SELECT DISTINCT salary 
    FROM employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary