# Write your MySQL query statement below
select *
from products
where regexp_like(description, '(^|[^0-9A-Za-z])SN[0-9]{4}-[0-9]{4}([^0-9]|$)', 'c')
order by product_id