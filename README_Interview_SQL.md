# 🎯 50 High-Standard SQL Interview Problems

This file contains **50 carefully selected SQL problems** that are frequently asked in **technical interviews and Online Assessments (OA)** at product-based companies (FAANG, startups, and top MNCs).  
Solving these will sharpen your SQL thinking, cover all important patterns, and give you the **confidence to tackle any SQL round**.

---

## 📚 Topics Covered

- Joins (INNER, LEFT, SELF, CROSS)
- Subqueries & Correlated Subqueries
- Window Functions (RANK, DENSE_RANK, ROW_NUMBER, LAG, LEAD, SUM OVER, etc.)
- CTEs (Common Table Expressions) & Recursive CTEs
- Aggregations & GROUP BY / HAVING
- String Functions & REGEXP
- Date & Time Functions
- CASE WHEN logic
- NULL Handling
- DELETE / UPDATE with conditions

---

## 🔥 Problem List

| # | Problem Name | Difficulty | LeetCode Link |
|---|-------------|-----------|---------------|
| 1 | Second Highest Salary | Medium | https://leetcode.com/problems/second-highest-salary/ |
| 2 | Nth Highest Salary | Medium | https://leetcode.com/problems/nth-highest-salary/ |
| 3 | Rank Scores | Medium | https://leetcode.com/problems/rank-scores/ |
| 4 | Consecutive Numbers | Medium | https://leetcode.com/problems/consecutive-numbers/ |
| 5 | Employees Earning More Than Their Managers | Easy | https://leetcode.com/problems/employees-earning-more-than-their-managers/ |
| 6 | Duplicate Emails | Easy | https://leetcode.com/problems/duplicate-emails/ |
| 7 | Customers Who Never Order | Easy | https://leetcode.com/problems/customers-who-never-order/ |
| 8 | Delete Duplicate Emails | Easy | https://leetcode.com/problems/delete-duplicate-emails/ |
| 9 | Rising Temperature | Easy | https://leetcode.com/problems/rising-temperature/ |
| 10 | Game Play Analysis I | Easy | https://leetcode.com/problems/game-play-analysis-i/ |
| 11 | Game Play Analysis IV | Medium | https://leetcode.com/problems/game-play-analysis-iv/ |
| 12 | Human Traffic of Stadium | Hard | https://leetcode.com/problems/human-traffic-of-stadium/ |
| 13 | Department Highest Salary | Medium | https://leetcode.com/problems/department-highest-salary/ |
| 14 | Department Top Three Salaries | Hard | https://leetcode.com/problems/department-top-three-salaries/ |
| 15 | Exchange Seats | Medium | https://leetcode.com/problems/exchange-seats/ |
| 16 | Trips and Users | Hard | https://leetcode.com/problems/trips-and-users/ |
| 17 | Find Median Given Frequency of Numbers | Hard | https://leetcode.com/problems/find-median-given-frequency-of-numbers/ |
| 18 | Investments in 2016 | Medium | https://leetcode.com/problems/investments-in-2016/ |
| 19 | Friend Requests II: Who Has the Most Friends | Medium | https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/ |
| 20 | Consecutive Available Seats | Easy | https://leetcode.com/problems/consecutive-available-seats/ |
| 21 | Sales Person | Easy | https://leetcode.com/problems/sales-person/ |
| 22 | Tree Node | Medium | https://leetcode.com/problems/tree-node/ |
| 23 | Winning Candidate | Medium | https://leetcode.com/problems/winning-candidate/ |
| 24 | Get Highest Answer Rate Question | Medium | https://leetcode.com/problems/get-highest-answer-rate-question/ |
| 25 | Count Student Number in Departments | Medium | https://leetcode.com/problems/count-student-number-in-departments/ |
| 26 | Managers with at Least 5 Direct Reports | Medium | https://leetcode.com/problems/managers-with-at-least-5-direct-reports/ |
| 27 | Find Cumulative Salary of an Employee | Hard | https://leetcode.com/problems/find-cumulative-salary-of-an-employee/ |
| 28 | Last Person to Fit in the Bus | Medium | https://leetcode.com/problems/last-person-to-fit-in-the-bus/ |
| 29 | Restaurant Growth | Medium | https://leetcode.com/problems/restaurant-growth/ |
| 30 | Movie Rating | Medium | https://leetcode.com/problems/movie-rating/ |
| 31 | Report Contiguous Dates | Hard | https://leetcode.com/problems/report-contiguous-dates/ |
| 32 | Students Report by Geography | Hard | https://leetcode.com/problems/students-report-by-geography/ |
| 33 | Number of Transactions per Visit | Hard | https://leetcode.com/problems/number-of-transactions-per-visit/ |
| 34 | Active Businesses | Medium | https://leetcode.com/problems/active-businesses/ |
| 35 | Sales Analysis III | Easy | https://leetcode.com/problems/sales-analysis-iii/ |
| 36 | Product Sales Analysis III | Medium | https://leetcode.com/problems/product-sales-analysis-iii/ |
| 37 | Reformat Department Table | Easy | https://leetcode.com/problems/reformat-department-table/ |
| 38 | Customers Who Bought All Products | Medium | https://leetcode.com/problems/customers-who-bought-all-products/ |
| 39 | Monthly Transactions I | Medium | https://leetcode.com/problems/monthly-transactions-i/ |
| 40 | Immediate Food Delivery II | Medium | https://leetcode.com/problems/immediate-food-delivery-ii/ |
| 41 | NPV Queries | Medium | https://leetcode.com/problems/npv-queries/ |
| 42 | New Users Daily Count | Medium | https://leetcode.com/problems/new-users-daily-count/ |
| 43 | Activity Participants | Medium | https://leetcode.com/problems/activity-participants/ |
| 44 | Market Analysis I | Medium | https://leetcode.com/problems/market-analysis-i/ |
| 45 | Market Analysis II | Hard | https://leetcode.com/problems/market-analysis-ii/ |
| 46 | Reported Posts II | Medium | https://leetcode.com/problems/reported-posts-ii/ |
| 47 | User Purchase Platform | Hard | https://leetcode.com/problems/user-purchase-platform/ |
| 48 | Find the Quiet Students in All Exams | Hard | https://leetcode.com/problems/find-the-quiet-students-in-all-exams/ |
| 49 | Average Salary: Departments vs Company | Hard | https://leetcode.com/problems/average-salary-departments-vs-company/ |
| 50 | Students and Examinations | Easy | https://leetcode.com/problems/students-and-examinations/ |

---

## 🧠 Problem-wise Concepts & Key Hints

### 1. Second Highest Salary
**Concept:** Subquery / `LIMIT` with `OFFSET` / `MAX()` with exclusion  
**Key Hint:** Use `MAX(salary) WHERE salary < (SELECT MAX(salary) ...)` or `DENSE_RANK()`. Handle the case where result is `NULL` using `IFNULL`.

---

### 2. Nth Highest Salary
**Concept:** Stored function + `LIMIT` with `OFFSET`  
**Key Hint:** Use `LIMIT 1 OFFSET N-1` inside a function. Always handle `NULL` when fewer than N distinct salaries exist.

---

### 3. Rank Scores
**Concept:** Window function – `DENSE_RANK()`  
**Key Hint:** `DENSE_RANK()` gives consecutive ranks without gaps. `RANK()` leaves gaps — interviewers often test this distinction.

---

### 4. Consecutive Numbers
**Concept:** Self-join (3x) or window functions `LAG`/`LEAD`  
**Key Hint:** Join the same table 3 times on `id+1`, `id+2` and check that all three `num` values are equal. Alternatively use `LAG(num,1)` and `LAG(num,2)`.

---

### 5. Employees Earning More Than Their Managers
**Concept:** Self-join  
**Key Hint:** `JOIN Employee AS manager ON e.managerId = manager.id WHERE e.salary > manager.salary`

---

### 6. Duplicate Emails
**Concept:** `GROUP BY` + `HAVING COUNT > 1`  
**Key Hint:** Simple aggregation — group by email and filter groups with count ≥ 2.

---

### 7. Customers Who Never Order
**Concept:** `LEFT JOIN` + `IS NULL` / `NOT IN` subquery  
**Key Hint:** `LEFT JOIN Orders ON c.id = o.customerId WHERE o.id IS NULL` is more efficient than `NOT IN` for large datasets.

---

### 8. Delete Duplicate Emails
**Concept:** DELETE with self-join  
**Key Hint:** `DELETE p1 FROM Person p1, Person p2 WHERE p1.email = p2.email AND p1.id > p2.id` — keep the row with the smallest `id`.

---

### 9. Rising Temperature
**Concept:** Self-join on date with `DATEDIFF` / `LAG()`  
**Key Hint:** Join `Weather w1` with `Weather w2` on `DATEDIFF(w1.recordDate, w2.recordDate) = 1` and `w1.temperature > w2.temperature`.

---

### 10. Game Play Analysis I
**Concept:** `MIN()` with `GROUP BY`  
**Key Hint:** Find the first login date per player using `MIN(event_date)` grouped by `player_id`.

---

### 11. Game Play Analysis IV
**Concept:** Window function `MIN() OVER` + date arithmetic  
**Key Hint:** For each player, check if they logged in on `first_login_date + 1`. Use a CTE to compute first login, then join back.

---

### 12. Human Traffic of Stadium
**Concept:** Self-join (3x) or window functions for consecutive IDs  
**Key Hint:** Find 3 or more consecutive rows (by `id`) where `people >= 100`. Use `ROW_NUMBER()` and group by `id - ROW_NUMBER()` to detect consecutive sequences.

---

### 13. Department Highest Salary
**Concept:** Subquery or window function `RANK()`  
**Key Hint:** Use `WHERE salary = (SELECT MAX(salary) FROM Employee WHERE departmentId = ...)` or partition by department and filter `RANK() = 1`.

---

### 14. Department Top Three Salaries
**Concept:** `DENSE_RANK()` partitioned by department  
**Key Hint:** `DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) <= 3` — use `DENSE_RANK` not `RANK` to handle ties correctly.

---

### 15. Exchange Seats
**Concept:** `CASE WHEN` + `MOD()`  
**Key Hint:** For odd-id rows swap with `id+1`, for even-id rows swap with `id-1`. Handle the last row if total count is odd.

---

### 16. Trips and Users
**Concept:** Joining multiple tables, `ROUND()`, date filter, `CASE WHEN`  
**Key Hint:** Filter out banned users from both `client_id` and `driver_id`. Compute cancellation rate as `COUNT(cancelled) / COUNT(total)` per day.

---

### 17. Find Median Given Frequency of Numbers
**Concept:** Running total / cumulative sum  
**Key Hint:** Find the number where the cumulative frequency first crosses `total_count / 2`. Use a self-join cumulative sum approach.

---

### 18. Investments in 2016
**Concept:** Subquery with `GROUP BY` and `HAVING`  
**Key Hint:** Filter policies where `tiv_2015` is shared by multiple policy holders AND `lat/lon` is unique. Then sum `tiv_2016` for qualifying rows.

---

### 19. Friend Requests II: Who Has the Most Friends
**Concept:** `UNION ALL` + `GROUP BY`  
**Key Hint:** Combine `requester_id` and `accepter_id` with `UNION ALL`, then count occurrences per person and find the max.

---

### 20. Consecutive Available Seats
**Concept:** Self-join  
**Key Hint:** `JOIN Cinema c2 ON ABS(c1.seat_id - c2.seat_id) = 1 WHERE c1.free = 1 AND c2.free = 1`. Return distinct seat ids in sorted order.

---

### 21. Sales Person
**Concept:** `NOT IN` with subquery using JOINs  
**Key Hint:** Find all `sales_id` who had orders with the company named "RED", then exclude them from the SalesPerson table.

---

### 22. Tree Node
**Concept:** `CASE WHEN` with self-referencing table  
**Key Hint:** A node is Root if `p_id IS NULL`, Leaf if `id NOT IN (SELECT p_id ...)`, otherwise Inner.

---

### 23. Winning Candidate
**Concept:** JOIN + `GROUP BY` + `ORDER BY` + `LIMIT`  
**Key Hint:** Count votes per candidate, join with Candidate table, order by vote count descending, return top 1.

---

### 24. Get Highest Answer Rate Question
**Concept:** Conditional aggregation with `SUM(CASE WHEN ...)`  
**Key Hint:** Rate = `SUM(action='answer') / SUM(action='show')`. Use `ORDER BY rate DESC LIMIT 1`.

---

### 25. Count Student Number in Departments
**Concept:** `LEFT JOIN` + `GROUP BY` + `COALESCE`  
**Key Hint:** Use `LEFT JOIN` from Department to Student so departments with zero students still appear. Use `COALESCE(COUNT(student_id), 0)`.

---

### 26. Managers with at Least 5 Direct Reports
**Concept:** Self-join or subquery with `GROUP BY HAVING`  
**Key Hint:** Group Employee by `managerId`, filter `COUNT(*) >= 5`, then join back to get manager names.

---

### 27. Find Cumulative Salary of an Employee
**Concept:** Window function `SUM() OVER` with frame clause, or self-join  
**Key Hint:** For each employee-month, sum the current and previous 2 months' salaries. Exclude the most recent month per employee.

---

### 28. Last Person to Fit in the Bus
**Concept:** Window function `SUM() OVER (ORDER BY ...)` – running total  
**Key Hint:** Compute a running total of `weight` ordered by `turn`. Find the last person where the running total ≤ 1000.

---

### 29. Restaurant Growth
**Concept:** Window function `SUM() OVER` with a 7-day sliding window  
**Key Hint:** Use `SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)`. Only include rows where at least 7 days of data exist.

---

### 30. Movie Rating
**Concept:** `UNION ALL` of two independent queries  
**Key Hint:** Query 1: user who rated the most movies (tie-break alphabetically). Query 2: movie with highest average rating in Feb 2020 (tie-break alphabetically). Combine with `UNION ALL`.

---

### 31. Report Contiguous Dates
**Concept:** Grouping consecutive dates – "islands" problem  
**Key Hint:** Use `ROW_NUMBER()` and subtract it from the date to create a group key for consecutive dates. Group by state and this key, then return `MIN` and `MAX` dates.

---

### 32. Students Report by Geography
**Concept:** Pivot / conditional aggregation  
**Key Hint:** Use `ROW_NUMBER() OVER (PARTITION BY continent ORDER BY name)` and then pivot using `MAX(CASE WHEN continent = 'America' ...)`.

---

### 33. Number of Transactions per Visit
**Concept:** CTE + `LEFT JOIN` + sequence generation  
**Key Hint:** Count transactions per (user, visit_date). Then count how many visits had 0, 1, 2, ... transactions. Use a generated number series to fill zero-count buckets.

---

### 34. Active Businesses
**Concept:** Window function `AVG() OVER (PARTITION BY ...)`  
**Key Hint:** Compute average occurrences per `event_type` across all businesses. Then find businesses with more than one `event_type` where their occurrence exceeds the average.

---

### 35. Sales Analysis III
**Concept:** `GROUP BY HAVING` with date range conditions  
**Key Hint:** Find products sold ONLY in Q1 2019. Use `HAVING MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <= '2019-03-31'`.

---

### 36. Product Sales Analysis III
**Concept:** Window function `RANK()` or subquery with `MIN(year)`  
**Key Hint:** Find the first year each product was sold, then return the matching rows with quantity and price.

---

### 37. Reformat Department Table
**Concept:** Pivot with conditional aggregation  
**Key Hint:** Use `SUM(CASE WHEN month = 'Jan' THEN revenue END) AS Jan_Revenue` for each month column. Group by `id`.

---

### 38. Customers Who Bought All Products
**Concept:** `GROUP BY HAVING COUNT(DISTINCT ...) = (SELECT COUNT(*) ...)`  
**Key Hint:** Count how many distinct products each customer bought. Compare to total number of products in the Product table.

---

### 39. Monthly Transactions I
**Concept:** Conditional aggregation with `DATE_FORMAT`  
**Key Hint:** Group by `DATE_FORMAT(trans_date, '%Y-%m')` and `country`. Use `SUM(CASE WHEN state='approved' ...)` for approved counts and amounts.

---

### 40. Immediate Food Delivery II
**Concept:** Window function `RANK()` or subquery for first order per customer  
**Key Hint:** Find each customer's first order date using `MIN(order_date)`. Then check if `order_date = customer_pref_delivery_date` for those rows. Compute the percentage.

---

### 41. NPV Queries
**Concept:** `LEFT JOIN` to handle missing keys  
**Key Hint:** Join Queries with NPV on both `id` and `year`. Use `IFNULL(npv, 0)` for non-matching rows.

---

### 42. New Users Daily Count
**Concept:** Subquery for first activity date + date filter  
**Key Hint:** For each user, find `MIN(activity_date)` as the first login. Then count new users per day within the last 90 days from `2019-06-30`.

---

### 43. Activity Participants
**Concept:** `GROUP BY HAVING` with `NOT IN (MAX, MIN)`  
**Key Hint:** Count participants per activity. Exclude activities with the maximum or minimum participant count to find those strictly in between.

---

### 44. Market Analysis I
**Concept:** `LEFT JOIN` + `YEAR()` filter + `COUNT()`  
**Key Hint:** Left join Users with Orders filtered to year 2019 on `buyer_id = user_id`. Count orders per user, defaulting to 0 for users with no 2019 orders.

---

### 45. Market Analysis II
**Concept:** Window function `RANK()` or subquery for 2nd item sold  
**Key Hint:** Rank each seller's sales by `order_date`. Find the seller's 2nd sale item and check if it matches their `favorite_brand`.

---

### 46. Reported Posts II
**Concept:** Subquery + `AVG()` + `ROUND()`  
**Key Hint:** Count distinct posts reported as spam per day, then compute the average across days. Round to 2 decimal places.

---

### 47. User Purchase Platform
**Concept:** `UNION ALL` for platform combinations + window function  
**Key Hint:** For each (spend_date, user), determine if they spent on mobile-only, desktop-only, or both. Use conditional aggregation and a cross-join with a platform list to fill zero-spend buckets.

---

### 48. Find the Quiet Students in All Exams
**Concept:** Window function `MAX()` and `MIN()` partitioned by exam  
**Key Hint:** For each exam, find the highest and lowest scores. A "quiet student" never scored the highest or lowest in any exam. Use `NOT IN` or a CTE to filter them out.

---

### 49. Average Salary: Departments vs Company
**Concept:** Window function `AVG() OVER` + `CASE WHEN` comparison  
**Key Hint:** Compute the company-wide average salary and department average salary per month. Compare the two using `CASE WHEN` to output `higher`, `lower`, or `same`.

---

### 50. Students and Examinations
**Concept:** `CROSS JOIN` + `LEFT JOIN` + `GROUP BY`  
**Key Hint:** Generate all (student, subject) combinations using `CROSS JOIN`. Then `LEFT JOIN` with Examinations to count how many times each student attended each exam. Fill missing combinations with 0.

---

## 💡 Interview Tips

1. **Always clarify NULLs** — Ask if a column can be NULL and handle it with `IS NULL`, `COALESCE`, or `IFNULL`.
2. **Window functions are your best friend** — `RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`, `LAG()`, `LEAD()`, `SUM() OVER` solve 80% of hard problems elegantly.
3. **CTE over nested subqueries** — CTEs (`WITH` clause) make complex queries readable and are preferred by interviewers.
4. **Know RANK vs DENSE_RANK vs ROW_NUMBER** — These behave differently on ties. Interviewers specifically test this.
5. **LEFT JOIN for "not exists" patterns** — Prefer `LEFT JOIN ... WHERE right.id IS NULL` over `NOT IN` for better performance on NULLs.
6. **Islands and gaps problem** — Use `ROW_NUMBER() - ROW_NUMBER()` trick to group consecutive rows.
7. **Pivot tables** — Use `MAX(CASE WHEN ...)` or `SUM(CASE WHEN ...)` to convert rows to columns.
8. **Running totals** — `SUM() OVER (ORDER BY ...)` is the standard pattern. Add `ROWS BETWEEN` for sliding windows.
9. **Correlated subqueries** — Know when to use them vs a JOIN; they can be slow but are sometimes the clearest solution.
10. **EXPLAIN your query** — In interviews, always be ready to discuss query performance and index usage.

---

## 🗂️ Topic-wise Quick Reference

| Topic | Problem Numbers |
|-------|----------------|
| Window Functions (RANK/DENSE_RANK) | 3, 13, 14, 27, 28, 29, 36, 45, 48, 49 |
| Window Functions (LAG/LEAD) | 4, 9 |
| CTEs | 11, 12, 31, 33, 47 |
| Self Joins | 5, 4, 8, 9, 20, 26 |
| GROUP BY / HAVING | 6, 7, 23, 24, 25, 35, 38, 43 |
| Conditional Aggregation / Pivot | 16, 24, 37, 39, 40, 46, 47, 49 |
| Subqueries | 1, 2, 13, 17, 21, 22, 27 |
| LEFT JOIN / NOT EXISTS | 7, 25, 41, 44, 50 |
| Date Functions | 9, 11, 16, 29, 39, 40, 42 |
| UNION ALL | 19, 30 |
| String / REGEXP | 32 |
| DELETE / UPDATE | 8 |

---

## 🔗 Study Resources

- LeetCode SQL Study Plan: https://leetcode.com/studyplan/top-sql-50/
- LeetCode SQL Problems (All): https://leetcode.com/problemset/?topicSlugs=database
- Mode SQL Tutorial: https://mode.com/sql-tutorial/
- W3Schools SQL Reference: https://www.w3schools.com/sql/

---

> **Pro Tip:** Practice each problem without looking at hints first. Only after you attempt it, review the key hint above. This builds problem-solving instinct that you need in live interviews.
