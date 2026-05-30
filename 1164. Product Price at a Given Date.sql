# Write your MySQL query statement below
select Product_id , new_price AS price
From Products 
WHERE (product_id , change_date) IN
(
    SELECT product_id , MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)
UNION
select Product_id , 10 AS price
From Products 
WHERE product_id NOT IN
(
    SELECT product_id 
    FROM Products
    WHERE change_date <= '2019-08-16'
)
