/* Author : Vansh Kumar
  Date : 2025-12-25
  Description: Leetcode problem-15
*/
# Write your MySQL query statement below
SELECT *
FROM Cinema
WHERE 
    id%2 != 0 
    AND description <> 'boring'
ORDER BY rating DESC;

-- “First, I filter rows using WHERE because no aggregation is required.
-- then I check for odd IDs using modulo.
-- next, I exclude rows where description is 'boring'.
-- finally, I sort the result by rating in descending order.”
