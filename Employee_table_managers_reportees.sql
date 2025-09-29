-- Write your MySQL query statement below
SELECT e_mgr.name
FROM employee e JOIN employee e_mgr ON e.managerid = e_mgr.id
GROUP BY e_mgr.id
HAVING COUNT(e.id) >= 5