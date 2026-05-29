# Write your MySQL query statement below

select customer_id
from Customer
group by customer_id
having count(DISTINCT product_key) = (
    select count(product_key)
    from Product
)


-- grrouping the Customer table by customer_id.
-- using COUNT(DISTINCT product_key) to find unique items per customer. like 1->5,6 | 2->6 | 3->5,6 --- calcul their count 
-- comparing that count to the total count of products_key in the Product table using a HAVING clause. simple hai or kya
