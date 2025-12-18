# Write your MySQL query statement below
select *
from cinema
where mod(id, 2) <> 0 and description not like '%boring%'
order by movie asc