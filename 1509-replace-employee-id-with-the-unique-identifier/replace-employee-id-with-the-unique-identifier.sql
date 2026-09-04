-- Write your PostgreSQL query statement below
SELECT e2.unique_id,e.name FROM Employees e LEFT JOIN EmployeeUNI e2 ON e.id = e2.id ORDER BY e.name ;