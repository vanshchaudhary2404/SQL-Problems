/* Author : Vansh Kumar
  Date : 2025-12-22
  Description: Leetcode problem-9
*/
--APPROACH 1
--# Write your MySQL query statement below
SELECT w1.id
FROM Weather  w1
JOIN Weather w2
    ON w1.recordDate = DATE_ADD( w2.recordDate , INTERVAL  1 DAY)
WHERE w1.temperature > w2.temperature;

--Approach 2 USING Window Function
SELECT id 
FROM (
    SELECT id , temperature,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp
    FROM weather
) t
WHERE temperature > prev_temp;
