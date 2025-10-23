-- Write your MySQL query statement below
-- Yes the students are swapping seats irl, but in the system just reassign their ids
SELECT
CASE
    WHEN id % 2 = 1 and id + 1 in (SELECT id FROM Seat) THEN id +1 -- checks if odd id has a following even number
    WHEN id % 2 = 0 THEN id - 1
    else id
    END AS id,
student
FROM Seat
ORDER BY id