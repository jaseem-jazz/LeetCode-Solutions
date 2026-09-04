-- Write your PostgreSQL query statement below
-- with man as(select managerId, count(managerId) as count from Employee  group by managerID having count(managerId) > 4)
-- select e.name from employee e left join man m on e.managerId = m.managerid where e.id = m.managerid
SELECT
    e.name 
FROM 
    employee e 
WHERE 
    e.id IN
        (SELECT n.managerId FROM Employee as n GROUP BY n.managerID HAVING count(n.managerId) > 4)
