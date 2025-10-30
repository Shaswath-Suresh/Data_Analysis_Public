-- First cte finds unique lat/lon pairs
WITH u_lat_lon AS(
    SELECT lat,lon 
    FROM insurance 
    GROUP BY lat,lon 
    HAVING COUNT(*) = 1
),
--Second cte finds the users' and their respective 2016 investment total. Using DISTINCT or applying SUM() here has wonky results.
cte AS (
    SELECT i1.tiv_2016
    FROM insurance i1 JOIN insurance i2 ON (i1.pid <> i2.pid) AND (i1.tiv_2015 = i2.tiv_2015)
    WHERE (i1.lat,i1.lon) in (SELECT lat,lon FROM u_lat_lon)
    GROUP BY i1.pid
)
--  resultS
SELECT ROUND(SUM(cte.tiv_2016),2) AS tiv_2016 FROM cte