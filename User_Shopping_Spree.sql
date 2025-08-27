--Use of self-join to find users with a transaction date 1 day and two days after the current row's transaction DATE
SELECT t1.user_id
FROM transactions t1 JOIN transactions t2 on t1.user_id = t2.user_id
WHERE t1.transaction_date + INTERVAL '1 DAY' = t2.transaction_date
OR t1.transaction_date + INTERVAL '2 DAY' = t2.transaction_date
--GROUP by with HAVING condition because 2 instances of t1.user_id means only a 2-day shopping streak(not a spree)
GROUP BY t1.user_id
HAVING COUNT(t1.user_id) > 2
ORDER BY t1.user_id