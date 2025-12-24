/* Author : Vansh Kumar
  Date : 2025-12-24
  Description: Leetcode problem-13
*/
# Write your MySQL query statement below
SELECT e.name
FROM Employee e
JOIN Employee r
    ON e.id = r.managerId
GROUP BY e.id , e.name
HAVING COUNT(r.id)>= 5;

-- “i self-join the Employee table to map managers with their direct reports,
--   group by manager, and use HAVING to filter managers with at least five direct reports”
