# Write your MySQL query statement below

select id
FROM (select
    id,
    temperature,
    recordDate,
    LAG(temperature) OVER (ORDER BY recordDate) AS temp_day_before,
    LAG(recordDate) OVER (ORDER BY recordDate) AS day_before
FROM weather) as tableBefore
where temperature > temp_day_before and day_before = DATE_SUB(recordDate, INTERVAL 1 DAY);
