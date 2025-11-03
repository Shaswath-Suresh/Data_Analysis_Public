-- Write your MySQL query statement below
SELECT * FROM Patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%'

-- solution with REGEX
/*SELECT * FROM patients
WHERE conditions REGEXP '^(DIAB1)| DIAB1' 
-- first checks if DIAB1 is at the beginning of string, second checks if ' DIAB1' is present anywhere, with space in front of d
*/