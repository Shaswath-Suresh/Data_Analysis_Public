--Highest Profiting Drugs Sold
SELECT drug, total_sales - cogs AS total_profit FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;

-- Manufacturers with highest losses
--Subquery to only consider drugs that had a net profit loss
SELECT manufacturer, COUNT(product_id), SUM(-1 * (total_sales - cogs)) AS total_losses FROM pharmacy_sales
WHERE product_id in (SELECT product_id 
                      FROM pharmacy_sales 
                      WHERE (total_sales - cogs) < 0)
GROUP BY manufacturer
ORDER BY total_losses DESC;

-- Total Sales by manufacturer with formatted result
SELECT 
  manufacturer, 
  CONCAT('$',CAST(ROUND(SUM(total_sales)/1000000,0)  AS VARCHAR(50)),' million') sales_mil
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer ASC; -- do not use aliased column because that is a varchar
