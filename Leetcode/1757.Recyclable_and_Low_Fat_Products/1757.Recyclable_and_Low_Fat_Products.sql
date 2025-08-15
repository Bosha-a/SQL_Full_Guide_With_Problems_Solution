--Write your MySQL query statement below
SELECT product_id
FROM Products 
WHERE recyclable = "Y" 
AND low_fats = "Y";


--Using a CASE expression in the WHERE clause
SELECT product_id
FROM Products
WHERE CASE WHEN recyclable = 'Y' 
AND low_fats = 'Y' 
THEN 1 ELSE 0 END = 1;


--Using a Subquery
SELECT product_id
FROM (
    SELECT *
    FROM Products
    WHERE recyclable = 'Y'
) AS filtered
WHERE low_fats = 'Y';
