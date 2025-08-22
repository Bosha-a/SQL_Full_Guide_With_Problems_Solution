--Using CONCAT
SELECT user_id, 
CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name  
FROM Users 
ORDER BY user_id

--Using INSERT
SELECT user_id, 
INSERT(LOWER(name), 1, 1, UPPER(LEFT(name,1))) AS name  
FROM Users 
ORDER BY user_id