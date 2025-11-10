SELECT ROUND(AVG(bike_price),2) AS avg_sale_price
FROM inventory
WHERE bike_price IS NOT NULL AND bike_sold = 'Y'