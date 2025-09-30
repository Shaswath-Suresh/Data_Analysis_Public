WITH sub AS (
    SELECT 
        challenge_id,
        SUM(COALESCE(total_submissions, 0)) AS total_submissions,
        SUM(COALESCE(total_accepted_submissions, 0)) AS total_accepted_submissions
    FROM submission_stats
    GROUP BY challenge_id
),
views AS (
    SELECT 
        challenge_id,
        SUM(COALESCE(total_views, 0)) AS total_views,
        SUM(COALESCE(total_unique_views, 0)) AS total_unique_views
    FROM view_stats
    GROUP BY challenge_id
),
tests AS ( 
    SELECT 
        c.contest_id, 
        c.hacker_id, 
        c.name,
        SUM(COALESCE(ss.total_submissions, 0)) AS total_submissions,
        SUM(COALESCE(ss.total_accepted_submissions, 0)) AS total_accepted_submissions,
        SUM(COALESCE(vs.total_views, 0)) AS total_views,
        SUM(COALESCE(vs.total_unique_views, 0)) AS total_unique_views
    FROM contests c 
    JOIN colleges clg ON clg.contest_id = c.contest_id 
    JOIN challenges ch ON ch.college_id = clg.college_id 
    LEFT JOIN sub ss ON ss.challenge_id = ch.challenge_id 
    LEFT JOIN views vs ON vs.challenge_id = ch.challenge_id 
    GROUP BY c.contest_id, c.hacker_id, c.name
)
SELECT * FROM tests
WHERE NOT (
    total_submissions = 0 
    AND total_accepted_submissions = 0 
    AND total_views = 0 
    AND total_unique_views = 0) 
ORDER BY contest_id ASC;
