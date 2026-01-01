/* Author : Vansh Kumar
  Date : 2026-01-01
  Description: Leetcode problem-163
*/
# Write your MySQL query statement below
-- Formula percentage = (number of users registered in this contest) ​×100 / total number of users.
SELECT  
    r.contest_id,
    ROUND(
        COUNT(DISTINCT r.user_id ) *100.0 / COUNT(DISTINCT u.user_id)
        , 2 
    ) AS percentage
From Register r
CROSS JOIN Users u
GROUP BY r.contest_id
ORDER BY  percentage DESC , contest_id ASC; 

-- Approach 2
SELECT  
    r.contest_id,
    ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
From Register r
GROUP BY r.contest_id
ORDER BY  percentage DESC , contest_id ASC; 
