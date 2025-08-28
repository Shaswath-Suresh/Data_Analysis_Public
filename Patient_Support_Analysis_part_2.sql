WITH na_null AS(
  SELECT 
    COUNT(*) FILTER(WHERE call_category IS NULL OR call_category LIKE 'n/a') AS uncategorized,
    COUNT(*) AS total
  FROM callers
)
SELECT ROUND(100.0 * uncategorized / total,1) AS uncategorised_call_pct
FROM na_null