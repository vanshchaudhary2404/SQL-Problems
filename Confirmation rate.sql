/* Author : Vansh Kumar
  Date : 2025-12-25
  Description: Leetcode problem-14
*/
# Write your MySQL query statement below
-- Approch 1 :-
-- I start from the Signups table, left join Confirmations to keep users with no requests,
-- count confirmed actions over total requests, handle NULLs to avoid division by zero,
-- and round the result to two decimals.”
SELECT 
    s.user_id , 
    ROUND( 
        IFNULL( 
            SUM( c.action = 'confirmed') / COUNT(c.action) 
            , 0
        ) , 2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
    ON s.user_id = c.user_id
GROUP BY s.user_id;



-- Second method to calculate confirmation rate
-- “I used conditional aggregation with IF to count confirmed actions and if their if no confiramtion make it to zero, 
-- and AVG aggreate function to calcluate the confirmation rate 
SELECT 
    s.user_id , 
    ROUND(AVG( if( c.action = 'confirmed' , 1 , 0 )) , 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
    ON s.user_id = c.user_id
GROUP BY s.user_id;
