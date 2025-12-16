-- Write your MySQL query statement below
SELECT e.name AS Employee
FROM employee e JOIN employee mgr ON e.managerId= mgr.id AND e.salary > mgr.salary