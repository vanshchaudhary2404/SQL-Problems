/* Author : Vansh Kumar
  Date : 2025-12-20
  Description: Leetcode problem-10
*/
# Write your MySQL query statement below

-- “I self-join the Activity table on machine_id and process_id 
-- to pair start and end timestamps, compute process duration, then average per machine.”

SELECT 
    a.machine_id,
    ROUND(AVG( b.timestamp - a.timestamp ) , 3 ) AS processing_time
FROM Activity a
JOIN Activity b
    ON a.machine_id = b.machine_id AND a.process_id = b.process_id
WHERE a.activity_type = "start" AND b.activity_type = "end"
GROUP BY a.machine_id;
