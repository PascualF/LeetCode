# Write your MySQL query statement below
select num as ConsecutiveNums
from (
    select
    num,
    LEAD(num, 1) OVER(ORDER BY id) as next_num,
    LEAD(num, 2) OVER(order by id) as next_2_num
    from logs
) as consecutive_nums
where num = next_num AND num = next_2_num