-- Manhattan distance
SELECT ROUND((MAX(lat_n) - MIN(lat_n)) + (MAX(long_w) - MIN(long_w)),4) FROM station;

--Euclidian distance
SELECT ROUND(SQRT(POWER(MAX(lat_n)-MIN(lat_n),2) + POWER(MAX(long_w)-MIN(long_w),2)),4) 
FROM station;
