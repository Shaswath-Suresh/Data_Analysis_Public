--CTE to group summary statistics by product and year
WITH product_total_spend AS 
(
  SELECT 
  EXTRACT(YEAR FROM transaction_date::DATE) AS year,
  product_id,
  SUM(spend) AS total_spend
  FROM user_transactions
  GROUP BY 1,2
  ORDER BY product_id,year
)
/*main query with window function on CTE table to compare 
current year total product spend with previous year spend 
on respective product*/
SELECT 
  year,
  product_id,
  total_spend,
  LAG(total_spend) OVER (PARTITION BY product_id ORDER BY year) AS prev_year_spend,
  ROUND(100.0 * (total_spend - LAG(total_spend) OVER (PARTITION BY product_id ORDER BY year)) / 
  LAG(total_spend) OVER (PARTITION BY product_id ORDER BY year),2) AS yoy_rate
FROM product_total_spend
