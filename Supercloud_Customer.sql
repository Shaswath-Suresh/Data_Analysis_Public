SELECT cc.customer_id 
FROM customer_contracts cc 
RIGHT JOIN products p ON cc.product_id = p.product_id
GROUP BY cc.customer_id
--Important distinction: product_id and product category is not 1:1. Also, there is no product_id 3 in products table, hence the right join to filter out those discrepancies
HAVING COUNT(DISTINCT p.product_category) = 
    (SELECT COUNT(DISTINCT product_category) FROM products);