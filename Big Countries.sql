/* Author : Vansh Kumar
  Date : 2025-12-20
  Description: Leetcode problem-3
*/
-- # Write your MySQL query statement below
SELECT 
    name , 
    population, 
    area 
FROM
    World
WHERE area >= 3000000 OR population >= 25000000;
