SELECT id , movie , description , rating 
FROM Cinema 
Where MOD(ID,2)=1 AND description != 'boring'
ORDER BY rating DESC;