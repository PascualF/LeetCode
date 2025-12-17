# Write your MySQL query statement below
select name
from salesperson as sp
where sp.sales_id not in (select distinct sales_id
from orders as o
join company as c on o.com_id = c.com_id
where c.name LIKE 'RED')