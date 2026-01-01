/* Author : Vansh Kumar
  Date : 2025-12-26
  Description: Leetcode problem-1075
*/
# Write your MySQL query statement below
SELECT  
    p.project_id ,
    ROUND( IFNULL(AVG(e.experience_years) , 0) , 2) AS average_years
FROM Project p
INNER JOIN Employee e
    ON p.employee_id = e.employee_id
GROUP BY p.project_id;

-- “I join Project with Employee using the foreign key and 
-- compute the average of experience_years per project_id, rounding 
-- it to two decimals. Since the join is guaranteed by constraints, AVG() will never be NULL.”
