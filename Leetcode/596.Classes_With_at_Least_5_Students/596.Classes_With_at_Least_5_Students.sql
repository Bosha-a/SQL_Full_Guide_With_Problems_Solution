SELECT IFNULL(class , 0)  AS class
FROM (
    SELECT class 
    FROM Courses 
    group by class
    HAVING COUNT(class) >= 5 
)AS filtered 