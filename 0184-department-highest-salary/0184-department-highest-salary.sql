# Write your MySQL query statement below

select 
    dpt.name as Department,
    t.name as Employee,
    t.salary as Salary
from (
    select 
        *,
        dense_rank() over(partition by departmentId order by salary desc) as rn
    from employee
) as t
join department as dpt on dpt.id = t.departmentId
where rn = 1