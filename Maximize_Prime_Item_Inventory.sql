WITH batch_size_count AS
(
  SELECT 
    item_type,
    SUM(square_footage) AS total_sqft,
    COUNT(item_category) AS item_count
  FROM inventory
  GROUP BY item_type
)
SELECT
  item_type,
  CASE
    WHEN item_type = 'prime_eligible' THEN (500000 / total_sqft::INT) * 6
    ELSE (500000 - (500000 / (SELECT MAX(total_sqft) FROM batch_size_count)::INT * (SELECT MAX(total_sqft) FROM batch_size_count))::INT) 
      / total_sqft::INT * 4
    
  END AS item_count
  
FROM
  batch_size_count