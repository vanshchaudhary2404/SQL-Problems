/* Author : Vansh Kumar
  Date : 2025-12-20
  Description: Leetcode problem-1251
*/
# Write your MySQL query statement below
SELECT 
    p.product_id ,
    ROUND( IFNULL(SUM( us.units * p.price ) / SUM(us.units) , 0 ), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold us
    ON p.product_id = us.product_id
    AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;


-- “I joined sales with price periods using the purchase date, computed total 
-- revenue as units × price, divided by total units to get a weighted average,
-- handled no-sale products using LEFT JOIN and IFNULL, and rounded to two decimals.”
