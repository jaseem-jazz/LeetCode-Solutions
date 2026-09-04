-- Write your PostgreSQL query statement below
WITH first as (SELECT * FROM Cinema WHERE id%2 != 0 )
SELECT * FROM first WHERE description != 'boring' ORDER BY rating DESC;