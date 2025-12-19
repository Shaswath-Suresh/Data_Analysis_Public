-- Use nested WHERE with NOT IN to get salespeople who have NEVER sold to red, not just non-red sales
SELECT name FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sales_id FROM orders WHERE com_id = (
        SELECT com_id FROM company WHERE name = 'Red'
    )
)