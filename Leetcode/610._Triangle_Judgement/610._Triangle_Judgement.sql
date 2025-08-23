SELECT *,
IF( 
        x+y>z 
    and y+z>x 
    and z+x>y, 
    "Yes", 
    "No") as triangle 
FROM Triangle


--Using CASE
SELECT *,
       CASE 
           WHEN x + y > z AND y + z > x AND z + x > y 
           THEN 'Yes' 
           ELSE 'No' 
       END AS triangle
FROM Triangle;