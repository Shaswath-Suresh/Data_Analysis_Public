SELECT ROUND(100 * SUM(CASE WHEN has_member_card = 'Y' THEN 1 ELSE 0 END) / COUNT(DISTINCT kroger_id),2)
  FROM customers

-- or ROUND(COUNT(CASE..WHEN..THEN..END)...)
/*SELECT 
ROUND(COUNT(CASE WHEN has_member_card = 'Y' THEN 1 END) / COUNT(*) * 100,2) AS Percentage_with_Membership
FROM customers
WHERE kroger_id IS NOT NULL*/