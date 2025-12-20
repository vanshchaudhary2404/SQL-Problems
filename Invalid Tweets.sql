/* Author : Vansh Kumar
  Date : 2025-12-21
  Description: Leetcode problem-5
*/
--# Write your MySQL query statement below
SELECT 
    tweet_id
FROM 
    Tweets
WHERE   
    CHAR_LENGTH(content) > 15;
-- WHERE LENGTH(content)>15;
