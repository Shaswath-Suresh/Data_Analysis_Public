SELECT s.name
FROM friends f 
JOIN packages pstu ON f.id = pstu.id
JOIN packages pfriend ON f.friend_id = pfriend.id
JOIN students s ON f.id = s.id
WHERE pfriend.salary > pstu.salary
ORDER BY pfriend.salary