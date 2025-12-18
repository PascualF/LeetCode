# Write your MySQL query statement below
select 
    project_id,
    AVG(em.experience_years) as average_years
from project as pj
join employee as em on pj.employee_id = em.employee_id
group by pj.project_id