# Write your MySQL query statement below

WITH table_cat AS (
    SELECT
    CASE 
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category
    FROM accounts
),
categories AS (
    SELECT 'Low Salary' as category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)

SELECT 
    c.category,
    COUNT(tc.category) AS accounts_count
FROM categories as c
LEFT JOIN table_cat as tc ON c.category = tc.category
GROUP BY c.category