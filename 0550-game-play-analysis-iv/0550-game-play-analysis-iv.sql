

WITH ranked AS (
    SELECT
        player_id,
        event_date,
        ROW_NUMBER() OVER
        (
            PARTITION BY player_id
            ORDER BY event_date
        ) AS rn,
        MIN(event_date) OVER(PARTITION BY player_id) AS first_date
    FROM Activity
)
SELECT ROUND(SUM(CASE WHEN rn=2 AND DATEDIFF(event_date, first_date) = 1 THEN 1.0 ELSE 0 END) / COUNT(DISTINCT player_id), 2) AS fraction
FROM ranked