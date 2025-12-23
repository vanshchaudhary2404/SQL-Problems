/* Author : Vansh Kumar
  Date : 2025-12-23
  Description: Leetcode problem-11
*/
--# Write your MySQL query statement below
-- “Use a LEFT JOIN to keep all employees, then filter rows where bonus
--  is either less than 1000 or NULL to capture employees with low or no bonus.”
SELECT 
    name , bonus
FROM 
    Employee
LEFT JOIN Bonus
    ON Employee.empId = Bonus.empId
WHERE bonus < 1000 OR bonus IS null;
