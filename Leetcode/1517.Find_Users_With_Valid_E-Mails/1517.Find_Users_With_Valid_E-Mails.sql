SELECT user_id, name, mail
FROM Users 
WHERE BINARY mail REGEXP BINARY '^[A-Za-z][A-Za-z0-9\_\.\-]*@leetcode\\.com$'

