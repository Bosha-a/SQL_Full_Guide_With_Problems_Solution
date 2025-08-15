--Write your MySQL query statement below
SELECT DISTINCT author_id AS id
FROM Views
WHERE viewer_id = author_id
ORDER BY author_id ASC;


--Using a Subquery
SELECT DISTINCT author_id AS id
FROM (
    SELECT author_id
    FROM Views
    WHERE viewer_id = author_id
) AS filtered
ORDER BY id ASC;


--Using Group By
SELECT author_id AS id
FROM Views
WHERE viewer_id = author_id
GROUP BY author_id
ORDER BY author_id ASC;
