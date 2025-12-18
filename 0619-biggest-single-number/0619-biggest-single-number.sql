# Write your MySQL query statement below
# Usage 

select MAX(num) as num
from (select num
        from mynumbers
        group by num
        having count(*) = 1
    )  as singles