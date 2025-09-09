SELECT 
    n,
    CASE 
        WHEN p IS NULL THEN 'Root'
        WHEN n IN (SELECT DISTINCT p FROM bst) THEN 'Inner'
        ELSE 'Leaf'
    END AS label
 FROM bst
 ORDER BY n