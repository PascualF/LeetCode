# Write your MySQL query statement below
select
    user_id,
    max(case when year(time_stamp) = '2020' then time_stamp end) as last_stamp
from logins
group by user_id
having max(case when year(time_stamp) = '2020' then time_stamp end) is not null