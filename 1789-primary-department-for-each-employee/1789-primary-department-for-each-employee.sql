# Write your MySQL query statement below
select 
    employee_id,
    coalesce(
        MAX(CASE when primary_flag = 'Y' then department_id end),
        max(department_id)
    ) as department_id
from employee
group by employee_id