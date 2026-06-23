/* Write your T-SQL query statement below */
;WITH first_appear AS (
    SELECT
        s.product_id,
        s.year,
        s.quantity,
        s.price,
        DENSE_RANK() OVER(PARTITION BY s.product_id ORDER BY s.year) as rn
    FROM Sales s
)
SELECT
    fa.product_id,
    fa.year as first_year,
    fa.quantity,
    fa.price
FROM first_appear fa
WHERE rn = 1