--Write your MySQL query statement below
SELECT name 
FROM Customer
WHERE referee_id != 2 OR referee_id is NULL ; 


--Using <=> Operator 
SELECT name 
FROM Customer
WHERE NOT referee_id <=> 2 ; 


--Using a Subquery
SELECT name
FROM (
    SELECT *
    FROM Customer
    WHERE referee_id != 2 OR referee_id IS NULL
) AS Filtered;
