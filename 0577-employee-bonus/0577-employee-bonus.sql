# Write your MySQL query statement below
SELECT name, bonus
FROM employee AS e
LEFT JOIN bonus AS b ON e.empID = b.empID
WHERE bonus < 1000 or bonus IS NULL