--Write your MySQL query statement below
SELECT name , population , area 
FROM World
WHERE population >= 25000000 OR area >= 300000

--Using a Subquery
SELECT name , population , area
FROM (
    SELECT *
    FROM World
    WHERE population >= 25000000 OR area >= 300000
) AS filtered


