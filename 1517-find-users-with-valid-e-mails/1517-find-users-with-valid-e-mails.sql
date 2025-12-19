# Write your MySQL query statement below
select *
from users
WHERE mail REGEXP  '^[a-zA-Z][a-zA-Z0-9_.-]*@(?-i)leetcode[.](?-i)com$'