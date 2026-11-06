-- Write your PostgreSQL query statement below
-- select name as Employee from emlpoyee where salary > (
    select emp2.name as employee from employee as emp1 join employee as emp2 on emp1.id = emp2.managerId
    where emp1.salary<emp2.salary