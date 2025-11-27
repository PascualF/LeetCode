# Write your MySQL query statement below
Select product_name, year, price
FROM sales AS sls
JOIN product AS prd ON sls.product_id = prd.product_id