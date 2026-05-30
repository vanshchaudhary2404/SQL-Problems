# Write your MySQL query statement below
-- CASE statement for if else
SELECT 
    CASE 
        WHEN 
            id = (SELECT MAX(id) FROM Seat ) AND MOD(id , 2 ) = 1 -- select last id any verify is it odd or not, if odd no change
            THEN id
        WHEN
            MOD(id , 2) = 1 -- mean odd swap to id+1 
            THEN id+1
        ELSE   
            id-1
        END AS id , student
FROM Seat
ORDER BY id
