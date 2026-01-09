# Write your MySQL query statement below
(select emp.employee_id
from employees as emp
left join salaries as sl on emp.employee_id=sl.employee_id
where sl.employee_id is NULL
union
select sl.employee_id
from employees as emp
right join salaries as sl on emp.employee_id=sl.employee_id
where emp.name is null)
order by employee_id