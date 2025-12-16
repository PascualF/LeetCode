# Write your MySQL query statement below
select email
from person
group by email
Having count(email) > 1
