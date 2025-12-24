/* Author : Vansh Kumar
  Date : 2025-12-24
  Description: Leetcode problem-12
*/
-- # Write your MySQL query statement below

-- LOGIC 
-- CROSS JOIN → guarantees all combinations
-- LEFT JOIN → preserves combinations with no exams
-- COUNT(e.student_id) → counts rows when match exists
-- returns 0 when NULL (no match)
  
SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
    ON s.student_id = e.student_id 
        AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id , s.student_name;
