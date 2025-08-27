WITH earliest_year AS (
  SELECT card_name,MIN(issue_year) earliest_year 
  FROM monthly_cards_issued
  GROUP BY card_name
),
earliest_month AS (
  SELECT mci.card_name, MIN(issue_month) earliest_mon
  FROM earliest_year ey JOIN monthly_cards_issued mci ON ey.card_name = mci.card_name
  WHERE mci.issue_year = ey.earliest_year
  GROUP BY mci.card_name
)

SELECT DISTINCT mci.card_name, mci.issued_amount
FROM monthly_cards_issued mci 
JOIN earliest_month em ON em.card_name = mci.card_name
JOIN earliest_year ey ON ey.card_name = mci.card_name
WHERE mci.issue_month = em.earliest_mon AND mci.issue_year = ey.earliest_year
ORDER BY 2 DESC

-- OR use the make_date(y,m,d) on the issue_year,issue_month column (use 1 for the date argument)
-- with a FIRST_VALUE window function
/*
SELECT DISTINCT card_name, 
first_value(issued_amount) OVER(PARTITION BY card_name ORDER BY make_date(issue_year,issue_month,'01')) as amount
FROM monthly_cards_issued
ORDER BY amount DESC;
*/