SELECT DISTINCT query_name,
ROUND(AVG(rating/position), 2) AS quality,
ROUND(AVG(
    IF(rating < 3 , 1 , 0)
    )* 100 , 2) AS poor_query_percentage
FROM Queries 
GROUP BY query_name;


SELECT 
    query_name,
    ROUND(AVG(rating/position), 2) AS quality,
    ROUND(SUM(rating < 3) * 100.0 / COUNT(*), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
