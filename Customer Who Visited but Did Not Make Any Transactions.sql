/* Author : Vansh Kumar
  Date : 2025-12-22
  Description: Leetcode problem-8
*/
--# Write your MySQL query statement below
--“I used a LEFT JOIN between Visits and Transactions and filtered rows where transaction is NULL to identify visits without transactions, then grouped by customer to count such visits.”
SELECT 
    v.customer_id , COUNT(*) AS count_no_trans
FROM 
    Visits AS v
LEFT JOIN 
    Transactions AS t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id; 
