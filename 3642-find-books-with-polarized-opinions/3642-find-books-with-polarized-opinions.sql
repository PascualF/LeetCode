# Write your MySQL query statement below
select
    b.book_id,
    b.title,
    b.author,
    b.genre,
    b.pages,
    (MAX(rs.session_rating) - MIN(rs.session_rating)) as rating_spread,
    Round(sum(case when rs.session_rating <=2 or rs.session_rating >= 4 then 1 else 0 end) * 1.0 / count(*), 2) as polarization_score
from books as b
join reading_sessions as rs
    on b.book_id=rs.book_id
group by b.book_id, b.title, b.author, b.genre, b.pages
having 
    count(rs.session_rating) >= 5
    and (sum(case when rs.session_rating <=2 or rs.session_rating >= 4 then 1 else 0 end) * 1.0 / count(*)) >= 0.6
    and ((MAX(rs.session_rating) - MIN(rs.session_rating)) >= 3)
order by polarization_score desc, b.title desc