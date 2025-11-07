-- Write your MySQL query statement below
-- introducing the GROUP_CONCAT() function which only works in MySQL
SELECT sell_date, 
COUNT(DISTINCT product) num_sold,
GROUP_CONCAT(DISTINCT product ORDER BY product) AS products -- list the distinct products in alphabetical order
FROM Activities
GROUP BY sell_date
ORDER BY sell_date