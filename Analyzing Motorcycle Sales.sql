-- Analyzing Sales: obtain Wholesale net revenue per product line per month per warehouse
SELECT 
	s.product_line,
	CASE 
		WHEN EXTRACT('month' FROM s.date) = 6 THEN 'June'
		WHEN EXTRACT('month' FROM s.date) = 7 THEN 'July'
		WHEN EXTRACT('month' FROM s.date) = 8 THEN 'August' 
	END AS month,
	s.warehouse,
	SUM(s.total - s.payment_fee) AS net_revenue
FROM public.sales s
WHERE s.client_type = 'Wholesale'
GROUP BY s.product_line, s.warehouse, month -- alias does not need to reference table unless it is from a cte
ORDER BY s.product_line, month, net_revenue DESC