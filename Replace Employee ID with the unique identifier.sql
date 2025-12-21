/* Author : Vansh Kumar
  Date : 2025-12-21
  Description: Leetcode problem-6
*/
--# Write your MySQL query statement below
-- “Since all employees must be returned even if a unique ID is missing,
-- I used a LEFT JOIN from Employees to EmployeeUNI, allowing unmatched rows to return NULL".
SELECT  
    e.name , eu.unique_id 
FROM 
    Employees AS e
LEFT JOIN 
    EmployeeUNI AS eu
ON e.id = eu.id
