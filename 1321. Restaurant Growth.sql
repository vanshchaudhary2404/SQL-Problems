# Write your MySQL query statement below
SELECT visited_on,
    (
        SELECT SUM(amount)
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB( c.visited_on , INTERVAL 6 DAY ) AND c.visited_on
    ) AS amount,
    ROUND((
        SELECT SUM(amount)/7
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB( c.visited_on , INTERVAL 6 DAY ) AND c.visited_on
    ), 2) AS average_amount
FROM Customer AS c
WHERE visited_on >= (
    SELECT DATE_ADD(MIN(visited_on) , INTERVAL 6 DAY)
    FROM Customer
)
GROUP BY visited_on
ORDER BY visited_on


-- Step 1:
-- Start from the 7th day only.
-- First valid 7-day window = MIN(date) + 6 days.
-- Before that, a complete 7-day average cannot be calculated.

-- Step 2:
-- Calculate total revenue of the current day + previous 6 days.
-- BETWEEN creates a rolling 7-day window.

-- Step 3:
-- Average revenue of the same 7-day window.
-- Divide total amount by 7 and round to 2 decimals.
