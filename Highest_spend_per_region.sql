SELECT region -- we only care about the region so the agg function goes directly in the Order BY
FROM food_regions
GROUP BY region
ORDER BY SUM(fast_food_millions) DESC
LIMIT 1 -- we only care about the region with the highest spend