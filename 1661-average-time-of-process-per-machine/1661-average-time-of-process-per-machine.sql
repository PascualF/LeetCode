# Write your MySQL query statement below
select 
    machine_id,
    ROUND(AVG(duration), 3) as processing_time
from
(select 
    machine_id,
    process_id,
    (MAX(CASE WHEN activity_type = 'end' THEN timestamp END) - MAX(CASE WHEN activity_type = 'start' THEN timestamp END)) as duration
from activity
Group by machine_id, process_id) as t
group by machine_id
