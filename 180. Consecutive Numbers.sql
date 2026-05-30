# Write your MySQL query statement below
# l1 = current row
# l2 = next row
# l3 = next-next row
         
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1 , Logs l2 , Logs l3
WHERE 
    # current -> next
    l1.id = l2.id-1 
        AND 
    # next -> next-next
    l2.id = l3.id-1 
# current.num = next.num = next-next.num
    AND l1.num = l2.num AND l2.num = l3.num;


-- Approach
# Find numbers that appear at least 3 times consecutively    
# Ensure l1 and l2 are consecutive rows    l1.id = l2.id-1
# Ensure l2 and l3 are consecutive rows      l2.id = l3.id-1 
# Check that the number in first row equals second row     l1.num = l2.num    
# Check that the number in second row equals third row     l2.num = l3.num;
