-- cte ranks the total_spend per category & product
WITH totals AS(
    SELECT
        category,
        product,
        SUM(spend) AS total_spend,
        RANK() OVER (PARTITION BY category ORDER BY SUM(spend) DESC) AS spend_rank
    FROM product_spend
    WHERE transaction_date BETWEEN '2022-01-01' AND '2023-01-01'
    GROUP BY 1,2
    ORDER BY total_spend DESC
)
--main query picks for the top two grossing items per category and product
SELECT category, product, total_spend
FROM totals
WHERE spend_rank < 3
ORDER BY category