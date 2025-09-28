WITH numbered_pairs AS (
    SELECT f1.x, f1.y, ROW_NUMBER() OVER (ORDER BY X) as rownum 
    -- so that you are not including "matches" consisting of the same point
    FROM functions f1 
)
SELECT DISTINCT np1.X, np1.Y
FROM numbered_pairs np1 CROSS JOIN numbered_pairs np2
-- WHERE clause is critical because there is no JOIN ON part of a CROSS JOIN
WHERE np1.x = np2.y AND np1.y = np2.x AND np1.X <= np1.Y AND np1.rownum != np2.rownum
ORDER BY np1.x,np1.y