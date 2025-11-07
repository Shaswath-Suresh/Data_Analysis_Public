-- Write your MySQL query statement below
-- Delte duplicate emails and keep the lower id
-- this would have come in handy to normalize multi-instances of build-part revision genealogy
DELETE p1 
FROM Person p1 
JOIN Person p2 ON p1.email = p2.email and p1.id > p2.id