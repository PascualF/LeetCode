# Write your MySQL query statement below
SELECT
    emp_u.unique_id,
    emp.name
FROM Employees AS emp
LEFT JOIN EmployeeUNI AS emp_u ON emp.id=emp_u.id