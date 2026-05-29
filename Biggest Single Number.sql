# Write your MySQL query statement below
select MAX(num) as num
from (
    SELECT num
    from MyNumbers
    group by num 
    having count(*) = 1
) as singles

-- subquery give the single numbers from subquery
-- max find the maximium form those singles and if nothing find it gives null
