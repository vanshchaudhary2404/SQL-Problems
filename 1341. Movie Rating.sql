# Write your MySQL query statement below
(SELECT name AS results
From Users 
INNER JOIN MovieRating using(user_id)
Group BY user_id
Order by COUNT(rating) DESC , name
LIMIT 1
)

UNION ALL

(SELECT title AS results
From Movies 
INNER JOIN MovieRating using(movie_id)
WHERE MONTH(created_at) = '02' AND Year(created_at) = '2020'
Group BY title
Order by AVG(rating) DESC , title
LIMIT 1
)


-- Join users with ratings
-- One row per user
-- Highest ratings count, tie -> lexicographically smaller name
-- Top user only
--  second part
-- Join movies with ratings
-- February
-- Year 2020
 -- One row per movie
-- Highest average rating, tie -> lexicographically smaller title
-- Top movie only
