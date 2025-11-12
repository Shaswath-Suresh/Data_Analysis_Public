SELECT customer_id
FROM customers
WHERE TIMESTAMPDIFF(YEAR, birth_date, '2023-01-01') >= 55
ORDER BY customer_id