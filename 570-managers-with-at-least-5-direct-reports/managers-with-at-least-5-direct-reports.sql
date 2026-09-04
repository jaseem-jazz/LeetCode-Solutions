SELECT
    e.name 
FROM 
    employee e 
WHERE 
    e.id IN
        (SELECT n.managerId FROM Employee as n GROUP BY n.managerID HAVING count(n.managerId) > 4)
