-- Write your PostgreSQL query statement below
with num as( select class , count(student) from courses group by class )
select class from num where count >= 5 ;
