# Write your MySQL query statement below

#Using approach 1 Order by + LIMIT/OFFSET
-- SELECT (
--     SELECT DISTINCT salary 
--     From Employee
--     ORDER BY salary DESC
--     LIMIT 1 OFFSET 1
-- ) AS SecondHighestSalary

#using approach 2 MAX() aggregate function + INNER JOIN
SELECT MAX(e1.Salary) AS SecondHighestSalary
FROM Employee e1 INNER JOIN Employee e2
ON e1.salary < e2.salary



#Approach 3 using MAX() + Subquery
-- SELECT MAX(salary)  AS SecondHighestSalary
-- FROM Employee 
-- WHERE salary < (
--     Select MAX(salary)
--     from Employee
-- ) 

#Approach 4 Using window Function DENSE_RANK()
-- SELECT (
--     SELECT salary
--     FROM (
--         SELECT salary,
--                DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
--         FROM Employee
--     ) t
--     WHERE rnk = 2
--     LIMIT 1
-- ) AS SecondHighestSalary;
