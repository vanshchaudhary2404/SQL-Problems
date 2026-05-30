# Write your MySQL query statement below
-- comments are for logic remembring , code is not taken from chatgpt okayy buddies

SELECT d.name AS Department,
        e1.name AS Employee,
        e1.salary AS Salary
FROM Employee AS e1 INNER JOIN Department AS d
on e1.departmentId = d.id
-- Keep only employees whose salary is in Top 3
WHERE 3 > (
    -- Count distinct salary levels higher than current employee
    SELECT COUNT(DISTINCT (e2.Salary))
    FROM Employee e2
    Where e2.Salary > e1.Salary 
        -- Compare only inside same department
        AND e1.DepartmentId = e2.DepartmentId
)


-- For each employee:
-- 1. Look inside the same department.
-- 2. Count DISTINCT salaries greater than current salary.
-- 3. If count < 3, employee belongs to Top 3 salary ranks.
-- 4. DISTINCT is used because ranking is based on salary levels, not number of employees.

-- Formula:
-- Top K ⇒ K > COUNT(DISTINCT higher salaries)
