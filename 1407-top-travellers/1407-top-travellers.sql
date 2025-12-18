# Write your MySQL query statement below
select 
    u.name,
    IFNULL(SUM(r.distance), 0) AS travelled_distance
from users as u
left join rides as r on u.id = r.user_id
group by u.name
order by travelled_distance desc,u.name asc