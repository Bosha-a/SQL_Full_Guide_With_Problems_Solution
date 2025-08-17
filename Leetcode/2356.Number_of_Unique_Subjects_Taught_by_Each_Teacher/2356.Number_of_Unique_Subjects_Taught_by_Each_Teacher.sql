SELECT DISTINCT teacher_id ,  COUNT(DISTINCT subject_id) AS cnt 
FROM Teacher 
GROUP BY teacher_id;


--Using a subquery
SELECT teacher_id, COUNT(*) AS cnt
FROM (
    SELECT teacher_id, subject_id
    FROM Teacher
    GROUP BY teacher_id, subject_id
) AS counted
GROUP BY teacher_id;
