--finding mean given a histogram
--1. Sum of the product of item count and their respective frequencies
--2. Divide by the total of the frequencies (basic subquery)
--3. CAST AS numeric and Round to 1 decimal place
SELECT ROUND(CAST(SUM(item_count * order_occurrences) / 
(SELECT SUM(order_occurrences) FROM items_per_order) AS NUMERIC), 1) AS mean
FROM items_per_order;