/* Author : Vansh Kumar
  Date : 2025-12-19
  Description: Leetcode problem-584
*/
-- # Write your MySQL query statement below
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id is null ;
