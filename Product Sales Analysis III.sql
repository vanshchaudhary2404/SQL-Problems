# Write your MySQL query statement below
-- select product_id , year as first_year , quantity , price
-- from Sales
-- where (product_id , year) in 
--     (select product_id , min(year)
--     from Sales
--     group by product_id) 

# Optimised version
SELECT product_id,
       year AS first_year,
       quantity,
       price
FROM(
    SELECT *,
           RANK() OVER(
               PARTITION BY product_id
               ORDER BY year
           ) AS rk
    FROM Sales
) t
WHERE rk = 1;
