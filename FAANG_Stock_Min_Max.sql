--Don't forget you can use Min and MAX as window functions as well and use it with other window functions as long as PARTITION BY clause is consistent
SELECT DISTINCT ticker,
FIRST_VALUE(TO_CHAR(date, 'Mon-yyyy')) OVER(PARTITION BY ticker ORDER BY open DESC) AS highest_mth,
MAX(open) OVER(PARTITION BY ticker) highest_open,
FIRST_VALUE(TO_CHAR(date, 'Mon-yyyy')) OVER(PARTITION BY ticker ORDER BY open) AS lowest_mth,
MIN(open) OVER(PARTITION BY ticker) lowest_open
FROM stock_prices
ORDER BY ticker