# Write your MySQL query statement below
select 
    manager.employee_id,
    manager.name,
    count(report.employee_id) as reports_count,
    round(avg(report.age)) as average_age
from employees as manager
join employees as report
on manager.employee_id = report.reports_to
group by manager.employee_id
order by manager.employee_id
