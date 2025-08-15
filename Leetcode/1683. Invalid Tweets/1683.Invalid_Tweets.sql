--Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15 ; 


--Using LENGTH() with explicit BINARY 
SELECT tweet_id
FROM Tweets
WHERE LENGTH(BINARY content) > 15;


--Using CHAR_LENGTH
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
