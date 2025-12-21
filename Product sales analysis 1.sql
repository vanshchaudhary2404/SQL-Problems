/* Author : Vansh Kumar
  Date : 2025-12-22
  Description: Leetcode problem-7
*/
--# Write your MySQL query statement below
SELECT 
    p.product_name , s.year , s.price
FROM 
    Sales AS s
LEFT JOIN 
    Product AS p
ON s.product_id = p.product_id;
