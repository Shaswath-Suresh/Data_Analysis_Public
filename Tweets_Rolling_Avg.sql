--Calculates 3 day rolling average where current row is included, 
--so you only need the previous 2 days in the window function
SELECT user_id, tweet_date, 
ROUND( AVG(tweet_count) OVER 
  (PARTITION BY user_id ORDER BY tweet_date 
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW),2) as rolling_avg_3d
FROM tweets;