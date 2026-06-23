# Write your MySQL query statement below
WITH department AS (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) as salary_rank 
    FROM Employee e
    JOIN Department d ON d.id = e.departmentId 
)
SELECT
    Department,
    Employee,
    Salary
FROM department
WHERE salary_rank <= 3
ORDER BY Department, Salary DESC