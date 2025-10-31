SELECT store_id, ROUND(AVG(revenue),2) AS avg_yearly_revenue
FROM stores
GROUP BY store_id
HAVING avg_yearly_revenue > 1000000;