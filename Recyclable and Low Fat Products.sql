/* Author : Vansh Kumar
  Date : 2025-12-18
  Description: Problem 1757
*/

-- Write your MySQL query statement below

SELECT product_id
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';
