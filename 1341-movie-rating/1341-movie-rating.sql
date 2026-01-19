# Write your MySQL query statement below

select results
from (
    select
        u.name as results,
        COUNT(mr.rating)
    from movierating as mr 
    join users as u on u.user_id=mr.user_id
    group by mr.user_id, u.name
    order by count(mr.rating) desc, u.name
    limit 1
) as t
union all
select results
from(
    select
        m.title as results,
            AVG(mr.rating) as avg_rating
        from movierating as mr
        join movies as m on m.movie_id=mr.movie_id
        where year(mr.created_at) = 2020 
        and month(mr.created_at) = 2
        group by mr.movie_id, m.title
        order by avg_rating desc, m.title
    limit 1
) as t2