--CTE with GENERATE_series decompresses or expandsa histogram into individual instances if you group by the category and the series as well
WITH searches_expanded AS (
SELECT searches, GENERATE_SERIES(1, num_users)
FROM search_frequency
GROUP BY searches, GENERATE_SERIES(1, num_users)
ORDER BY searches
)

SELECT 
  ROUND(PERCENTILE_CONT(.5) WITHIN GROUP (ORDER BY searches)::DECIMAL,1) AS median
FROM searches_expanded;