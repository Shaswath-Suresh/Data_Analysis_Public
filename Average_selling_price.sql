-- Write your MySQL query statement below
SELECT p.product_id, 
COALESCE(ROUND(SUM(p.price * us.units) / SUM(us.units),2),0) AS average_price
FROM unitssold us 
RIGHT JOIN prices p 
-- product prices vary based on purchase date window specified in prices table.
ON us.product_id = p.product_id AND us.purchase_date <= p.end_date AND us.purchase_date >= p.start_date
GROUP BY p.product_id