# Write your MySQL query statement below

SELECT id , COUNT(*) AS num
FROM (
    SELECT requester_id AS id
    FROM RequestAccepted 

    UNION ALL

    SELECT accepter_id 
    FROM RequestAccepted
) AS friend_cnt
Group by id
ORDER BY num DESC
LIMIT 1;



-- steps to hoe i do it
-- Put requester and accepter in one column (sub query in from )
-- Count total friendships of each user
-- User having maximum friends 
