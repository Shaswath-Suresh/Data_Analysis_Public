WITH cte AS (
    SELECT
    campaign_id,
    campaign_name,
    ROUND((revenue_generated - investment)/investment * 100) AS roi,
    PERCENT_RANK() OVER(ORDER BY ((revenue_generated - investment)/investment * 100) DESC) AS roi_rnk
    FROM marketing_spend
)
SELECT campaign_id, campaign_name, roi
FROM cte
WHERE roi_rnk <= .25
ORDER BY roi DESC, campaign_id DESC
