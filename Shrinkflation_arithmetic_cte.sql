WITH cte AS (
  SELECT
  product_name,
  ROUND(100 * (new_size - original_size) / original_size,0) size_change_percentage,
  ROUND(100 * (new_price - original_price) / original_price,0) price_change_percentage,
  CASE WHEN original_price <= new_price AND new_size < original_size 
    THEN 'True' 
    ELSE 'False'
  END AS shrinkflation_flag

  FROM products
)
SELECT * FROM cte ORDER BY product_name